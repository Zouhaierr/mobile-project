import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityQuestionRecord extends FirestoreRecord {
  CommunityQuestionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  bool hasTags() => _tags != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "answers" field.
  List<DocumentReference>? _answers;
  List<DocumentReference> get answers => _answers ?? const [];
  bool hasAnswers() => _answers != null;

  // "isAccepted" field.
  bool? _isAccepted;
  bool get isAccepted => _isAccepted ?? false;
  bool hasIsAccepted() => _isAccepted != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _body = snapshotData['body'] as String?;
    _author = snapshotData['author'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _answers = getDataList(snapshotData['answers']);
    _isAccepted = snapshotData['isAccepted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communityQuestion');

  static Stream<CommunityQuestionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityQuestionRecord.fromSnapshot(s));

  static Future<CommunityQuestionRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommunityQuestionRecord.fromSnapshot(s));

  static CommunityQuestionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityQuestionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityQuestionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityQuestionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityQuestionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityQuestionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityQuestionRecordData({
  String? title,
  String? body,
  String? author,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? isDeleted,
  bool? isAccepted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'body': body,
      'author': author,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isDeleted': isDeleted,
      'isAccepted': isAccepted,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityQuestionRecordDocumentEquality
    implements Equality<CommunityQuestionRecord> {
  const CommunityQuestionRecordDocumentEquality();

  @override
  bool equals(CommunityQuestionRecord? e1, CommunityQuestionRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.body == e2?.body &&
        e1?.author == e2?.author &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.isDeleted == e2?.isDeleted &&
        listEquality.equals(e1?.answers, e2?.answers) &&
        e1?.isAccepted == e2?.isAccepted;
  }

  @override
  int hash(CommunityQuestionRecord? e) => const ListEquality().hash([
        e?.title,
        e?.body,
        e?.author,
        e?.tags,
        e?.createdAt,
        e?.updatedAt,
        e?.isDeleted,
        e?.answers,
        e?.isAccepted
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunityQuestionRecord;
}
