import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "monto" field.
  double? _monto;
  double get monto => _monto ?? 0.0;
  bool hasMonto() => _monto != null;

  void _initializeFields() {
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _producto = snapshotData['producto'] as DocumentReference?;
    _cantidad = castToType<double>(snapshotData['cantidad']);
    _monto = castToType<double>(snapshotData['monto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  DocumentReference? usuario,
  DocumentReference? producto,
  double? cantidad,
  double? monto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'usuario': usuario,
      'producto': producto,
      'cantidad': cantidad,
      'monto': monto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.usuario == e2?.usuario &&
        e1?.producto == e2?.producto &&
        e1?.cantidad == e2?.cantidad &&
        e1?.monto == e2?.monto;
  }

  @override
  int hash(CartRecord? e) => const ListEquality()
      .hash([e?.usuario, e?.producto, e?.cantidad, e?.monto]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
