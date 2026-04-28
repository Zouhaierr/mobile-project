import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QuizzRecord extends FirestoreRecord {
  QuizzRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "CorrectAnswer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "QueestionDif" field.
  int? _queestionDif;
  int get queestionDif => _queestionDif ?? 0;
  bool hasQueestionDif() => _queestionDif != null;

  void _initializeFields() {
    _question = snapshotData['Question'] as String?;
    _correctAnswer = snapshotData['CorrectAnswer'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _queestionDif = castToType<int>(snapshotData['QueestionDif']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Quizz');

  static Stream<QuizzRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuizzRecord.fromSnapshot(s));

  static Future<QuizzRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuizzRecord.fromSnapshot(s));

  static QuizzRecord fromSnapshot(DocumentSnapshot snapshot) => QuizzRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuizzRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuizzRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuizzRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuizzRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuizzRecordData({
  String? question,
  String? correctAnswer,
  DateTime? time,
  int? queestionDif,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Question': question,
      'CorrectAnswer': correctAnswer,
      'Time': time,
      'QueestionDif': queestionDif,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuizzRecordDocumentEquality implements Equality<QuizzRecord> {
  const QuizzRecordDocumentEquality();

  @override
  bool equals(QuizzRecord? e1, QuizzRecord? e2) {
    return e1?.question == e2?.question &&
        e1?.correctAnswer == e2?.correctAnswer &&
        e1?.time == e2?.time &&
        e1?.queestionDif == e2?.queestionDif;
  }

  @override
  int hash(QuizzRecord? e) => const ListEquality()
      .hash([e?.question, e?.correctAnswer, e?.time, e?.queestionDif]);

  @override
  bool isValidKey(Object? o) => o is QuizzRecord;
}
