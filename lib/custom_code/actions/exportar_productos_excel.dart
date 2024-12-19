// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:excel/excel.dart';
import 'dart:typed_data';
import 'dart:html' as html;
import 'package:cloud_firestore/cloud_firestore.dart';

// Acción personalizada llamada 'exportProductosExcel'
Future<void> exportarProductosExcel() async {
  CollectionReference productosCollection =
      FirebaseFirestore.instance.collection('productos');

  try {
    // Obtener los datos de Firestore
    QuerySnapshot querySnapshot = await productosCollection.get();

    // Crear una instancia de Excel y una hoja
    var excel = Excel.createExcel();
    Sheet sheet = excel['Productos'];

    // Agregar encabezados de las columnas
    sheet.appendRow(['Nombre', 'Tipo de Grano', 'Cantidad', 'Precio']);

    // Recorrer los documentos y agregar filas con los datos específicos
    for (var doc in querySnapshot.docs) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      sheet.appendRow([
        data['nombre']?.toString() ?? 'Sin nombre',
        data['tipoGrano']?.toString() ?? 'Sin tipo',
        data['cantidad']?.toString() ?? '0',
        data['precio']?.toString() ?? '0.0',
      ]);
    }

    // Codificar el archivo Excel en bytes
    var excelBytes = excel.encode()!;

    // Crear un blob para descargar el archivo
    final blob = html.Blob([excelBytes],
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Crear un enlace temporal para la descarga
    final anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = 'productos.xlsx'
      ..click();

    // Revocar la URL temporal para liberar memoria
    html.Url.revokeObjectUrl(url);
  } catch (e) {
    print('Error al generar el archivo Excel: $e');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
