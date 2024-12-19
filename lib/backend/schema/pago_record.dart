import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagoRecord extends FirestoreRecord {
  PagoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "linea1" field.
  String? _linea1;
  String get linea1 => _linea1 ?? '';
  bool hasLinea1() => _linea1 != null;

  // "linea2" field.
  String? _linea2;
  String get linea2 => _linea2 ?? '';
  bool hasLinea2() => _linea2 != null;

  // "Provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "Canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "Distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "Zip" field.
  int? _zip;
  int get zip => _zip ?? 0;
  bool hasZip() => _zip != null;

  // "nombreComp" field.
  String? _nombreComp;
  String get nombreComp => _nombreComp ?? '';
  bool hasNombreComp() => _nombreComp != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "facturaID" field.
  int? _facturaID;
  int get facturaID => _facturaID ?? 0;
  bool hasFacturaID() => _facturaID != null;

  void _initializeFields() {
    _linea1 = snapshotData['linea1'] as String?;
    _linea2 = snapshotData['linea2'] as String?;
    _provincia = snapshotData['Provincia'] as String?;
    _canton = snapshotData['Canton'] as String?;
    _distrito = snapshotData['Distrito'] as String?;
    _zip = castToType<int>(snapshotData['Zip']);
    _nombreComp = snapshotData['nombreComp'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = castToType<int>(snapshotData['telefono']);
    _facturaID = castToType<int>(snapshotData['facturaID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pago');

  static Stream<PagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PagoRecord.fromSnapshot(s));

  static Future<PagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PagoRecord.fromSnapshot(s));

  static PagoRecord fromSnapshot(DocumentSnapshot snapshot) => PagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPagoRecordData({
  String? linea1,
  String? linea2,
  String? provincia,
  String? canton,
  String? distrito,
  int? zip,
  String? nombreComp,
  String? email,
  int? telefono,
  int? facturaID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'linea1': linea1,
      'linea2': linea2,
      'Provincia': provincia,
      'Canton': canton,
      'Distrito': distrito,
      'Zip': zip,
      'nombreComp': nombreComp,
      'email': email,
      'telefono': telefono,
      'facturaID': facturaID,
    }.withoutNulls,
  );

  return firestoreData;
}

class PagoRecordDocumentEquality implements Equality<PagoRecord> {
  const PagoRecordDocumentEquality();

  @override
  bool equals(PagoRecord? e1, PagoRecord? e2) {
    return e1?.linea1 == e2?.linea1 &&
        e1?.linea2 == e2?.linea2 &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.distrito == e2?.distrito &&
        e1?.zip == e2?.zip &&
        e1?.nombreComp == e2?.nombreComp &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.facturaID == e2?.facturaID;
  }

  @override
  int hash(PagoRecord? e) => const ListEquality().hash([
        e?.linea1,
        e?.linea2,
        e?.provincia,
        e?.canton,
        e?.distrito,
        e?.zip,
        e?.nombreComp,
        e?.email,
        e?.telefono,
        e?.facturaID
      ]);

  @override
  bool isValidKey(Object? o) => o is PagoRecord;
}
