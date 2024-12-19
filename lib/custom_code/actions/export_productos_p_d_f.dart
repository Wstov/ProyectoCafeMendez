// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Librerías necesarias
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:html' as html;

// Acción personalizada llamada 'exportProductosPDF'
Future<void> exportProductosPDF() async {
  CollectionReference productosCollection =
      FirebaseFirestore.instance.collection('productos');

  try {
    // Obtener los datos de Firestore
    QuerySnapshot querySnapshot = await productosCollection.get();

    // Crear una instancia del documento PDF
    final pdf = pw.Document();

    // Crear la estructura del PDF
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Center(
                child: pw.Text('Reporte de Productos',
                    style: pw.TextStyle(
                        fontSize: 20, fontWeight: pw.FontWeight.bold)),
              ),
              pw.SizedBox(height: 20),
              pw.Table.fromTextArray(
                headers: ['Nombre', 'Tipo de Grano', 'Cantidad', 'Precio'],
                data: querySnapshot.docs.map((doc) {
                  Map<String, dynamic> data =
                      doc.data() as Map<String, dynamic>;
                  return [
                    data['nombre']?.toString() ?? 'Sin nombre',
                    data['tipoGrano']?.toString() ?? 'Sin tipo',
                    data['cantidad']?.toString() ?? '0',
                    data['precio']?.toString() ?? '0.0',
                  ];
                }).toList(),
              ),
            ],
          );
        },
      ),
    );

    // Convertir el PDF a bytes
    final pdfBytes = await pdf.save();

    // Crear un blob para descargar el archivo
    final blob = html.Blob([pdfBytes], 'application/pdf');
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Crear un enlace temporal para la descarga
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = 'productos.pdf'
      ..click();

    // Revocar la URL temporal para liberar memoria
    html.Url.revokeObjectUrl(url);
  } catch (e) {
    print('Error al generar el archivo PDF: $e');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
