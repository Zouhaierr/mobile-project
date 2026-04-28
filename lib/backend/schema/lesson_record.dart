import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonRecord extends FirestoreRecord {
  LessonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lessontitle" field.
  String? _lessontitle;
  String get lessontitle => _lessontitle ?? '';
  bool hasLessontitle() => _lessontitle != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "lessondate" field.
  DateTime? _lessondate;
  DateTime? get lessondate => _lessondate;
  bool hasLessondate() => _lessondate != null;

  // "duration" field.
  int? _duration;
  int get duration => _duration ?? 0;
  bool hasDuration() => _duration != null;

  void _initializeFields() {
    _lessontitle = snapshotData['lessontitle'] as String?;
    _subject = snapshotData['subject'] as String?;
    _description = snapshotData['description'] as String?;
    _category = snapshotData['category'] as String?;
    _level = snapshotData['level'] as String?;
    _lessondate = snapshotData['lessondate'] as DateTime?;
    _duration = castToType<int>(snapshotData['duration']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Lesson');

  static Stream<LessonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonRecord.fromSnapshot(s));

  static Future<LessonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonRecord.fromSnapshot(s));

  static LessonRecord fromSnapshot(DocumentSnapshot snapshot) => LessonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonRecordData({
  String? lessontitle,
  String? subject,
  String? description,
  String? category,
  String? level,
  DateTime? lessondate,
  int? duration,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lessontitle': lessontitle,
      'subject': subject,
      'description': description,
      'category': category,
      'level': level,
      'lessondate': lessondate,
      'duration': duration,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonRecordDocumentEquality implements Equality<LessonRecord> {
  const LessonRecordDocumentEquality();

  @override
  bool equals(LessonRecord? e1, LessonRecord? e2) {
    return e1?.lessontitle == e2?.lessontitle &&
        e1?.subject == e2?.subject &&
        e1?.description == e2?.description &&
        e1?.category == e2?.category &&
        e1?.level == e2?.level &&
        e1?.lessondate == e2?.lessondate &&
        e1?.duration == e2?.duration;
  }

  @override
  int hash(LessonRecord? e) => const ListEquality().hash([
        e?.lessontitle,
        e?.subject,
        e?.description,
        e?.category,
        e?.level,
        e?.lessondate,
        e?.duration
      ]);

  @override
  bool isValidKey(Object? o) => o is LessonRecord;
}
