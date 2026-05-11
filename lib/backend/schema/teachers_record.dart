import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeachersRecord extends FirestoreRecord {
  TeachersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "Desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "StartTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "EndTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "DeadLine" field.
  DateTime? _deadLine;
  DateTime? get deadLine => _deadLine;
  bool hasDeadLine() => _deadLine != null;

  // "EventType" field.
  String? _eventType;
  String get eventType => _eventType ?? '';
  bool hasEventType() => _eventType != null;

  void _initializeFields() {
    _titre = snapshotData['Titre'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _startTime = snapshotData['StartTime'] as DateTime?;
    _endTime = snapshotData['EndTime'] as DateTime?;
    _deadLine = snapshotData['DeadLine'] as DateTime?;
    _eventType = snapshotData['EventType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('teachers');

  static Stream<TeachersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeachersRecord.fromSnapshot(s));

  static Future<TeachersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeachersRecord.fromSnapshot(s));

  static TeachersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeachersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeachersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeachersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeachersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeachersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeachersRecordData({
  String? titre,
  String? desc,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? deadLine,
  String? eventType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Titre': titre,
      'Desc': desc,
      'StartTime': startTime,
      'EndTime': endTime,
      'DeadLine': deadLine,
      'EventType': eventType,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeachersRecordDocumentEquality implements Equality<TeachersRecord> {
  const TeachersRecordDocumentEquality();

  @override
  bool equals(TeachersRecord? e1, TeachersRecord? e2) {
    return e1?.titre == e2?.titre &&
        e1?.desc == e2?.desc &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.deadLine == e2?.deadLine &&
        e1?.eventType == e2?.eventType;
  }

  @override
  int hash(TeachersRecord? e) => const ListEquality().hash(
      [e?.titre, e?.desc, e?.startTime, e?.endTime, e?.deadLine, e?.eventType]);

  @override
  bool isValidKey(Object? o) => o is TeachersRecord;
}
