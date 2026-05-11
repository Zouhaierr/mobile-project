import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityQuestionAnswerRecord extends FirestoreRecord {
  CommunityQuestionAnswerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "questionRef" field.
  DocumentReference? _questionRef;
  DocumentReference? get questionRef => _questionRef;
  bool hasQuestionRef() => _questionRef != null;

  // "isAccepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  bool hasIsAccepted() => _isAccepted != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _author = snapshotData['author'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _questionRef = snapshotData['questionRef'] as DocumentReference?;
    _isAccepted = snapshotData['isAccepted'] as bool?;
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communityQuestionAnswer');

  static Stream<CommunityQuestionAnswerRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityQuestionAnswerRecord.fromSnapshot(s));

  static Future<CommunityQuestionAnswerRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommunityQuestionAnswerRecord.fromSnapshot(s));

  static CommunityQuestionAnswerRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CommunityQuestionAnswerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityQuestionAnswerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityQuestionAnswerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityQuestionAnswerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityQuestionAnswerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityQuestionAnswerRecordData({
  String? author,
  DateTime? createdAt,
  bool? isDeleted,
  DocumentReference? questionRef,
  bool? isAccepted,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'author': author,
      'createdAt': createdAt,
      'isDeleted': isDeleted,
      'questionRef': questionRef,
      'isAccepted': isAccepted,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityQuestionAnswerRecordDocumentEquality
    implements Equality<CommunityQuestionAnswerRecord> {
  const CommunityQuestionAnswerRecordDocumentEquality();

  @override
  bool equals(
      CommunityQuestionAnswerRecord? e1, CommunityQuestionAnswerRecord? e2) {
    return e1?.author == e2?.author &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.questionRef == e2?.questionRef &&
        e1?.isAccepted == e2?.isAccepted &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(CommunityQuestionAnswerRecord? e) => const ListEquality().hash([
        e?.author,
        e?.createdAt,
        e?.isDeleted,
        e?.questionRef,
        e?.isAccepted,
        e?.comment
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunityQuestionAnswerRecord;
}
