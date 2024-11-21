import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sku" field.
  String? _sku;
  String get sku => _sku ?? '';
  bool hasSku() => _sku != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "detalle" field.
  String? _detalle;
  String get detalle => _detalle ?? '';
  bool hasDetalle() => _detalle != null;

  // "presentacion" field.
  String? _presentacion;
  String get presentacion => _presentacion ?? '';
  bool hasPresentacion() => _presentacion != null;

  // "tipoGrano" field.
  String? _tipoGrano;
  String get tipoGrano => _tipoGrano ?? '';
  bool hasTipoGrano() => _tipoGrano != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  void _initializeFields() {
    _sku = snapshotData['sku'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _detalle = snapshotData['detalle'] as String?;
    _presentacion = snapshotData['presentacion'] as String?;
    _tipoGrano = snapshotData['tipoGrano'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precio = castToType<double>(snapshotData['precio']);
    _imagen = snapshotData['imagen'] as String?;
    _ratings = getDataList(snapshotData['ratings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? sku,
  String? nombre,
  String? detalle,
  String? presentacion,
  String? tipoGrano,
  int? cantidad,
  double? precio,
  String? imagen,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sku': sku,
      'nombre': nombre,
      'detalle': detalle,
      'presentacion': presentacion,
      'tipoGrano': tipoGrano,
      'cantidad': cantidad,
      'precio': precio,
      'imagen': imagen,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.sku == e2?.sku &&
        e1?.nombre == e2?.nombre &&
        e1?.detalle == e2?.detalle &&
        e1?.presentacion == e2?.presentacion &&
        e1?.tipoGrano == e2?.tipoGrano &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio &&
        e1?.imagen == e2?.imagen &&
        listEquality.equals(e1?.ratings, e2?.ratings);
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.sku,
        e?.nombre,
        e?.detalle,
        e?.presentacion,
        e?.tipoGrano,
        e?.cantidad,
        e?.precio,
        e?.imagen,
        e?.ratings
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
