import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UtiliRecord extends FirestoreRecord {
  UtiliRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _role = snapshotData['role'] as String?;
    _password = snapshotData['password'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('utili');

  static Stream<UtiliRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UtiliRecord.fromSnapshot(s));

  static Future<UtiliRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UtiliRecord.fromSnapshot(s));

  static UtiliRecord fromSnapshot(DocumentSnapshot snapshot) => UtiliRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UtiliRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UtiliRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UtiliRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UtiliRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUtiliRecordData({
  String? name,
  String? role,
  String? password,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'role': role,
      'password': password,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class UtiliRecordDocumentEquality implements Equality<UtiliRecord> {
  const UtiliRecordDocumentEquality();

  @override
  bool equals(UtiliRecord? e1, UtiliRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.role == e2?.role &&
        e1?.password == e2?.password &&
        e1?.email == e2?.email;
  }

  @override
  int hash(UtiliRecord? e) =>
      const ListEquality().hash([e?.name, e?.role, e?.password, e?.email]);

  @override
  bool isValidKey(Object? o) => o is UtiliRecord;
}
