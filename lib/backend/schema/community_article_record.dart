import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityArticleRecord extends FirestoreRecord {
  CommunityArticleRecord._(
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

  // "viewCount" field.
  int? _viewCount;
  int get viewCount => _viewCount ?? 0;
  bool hasViewCount() => _viewCount != null;

  // "comments" field.
  List<DocumentReference>? _comments;
  List<DocumentReference> get comments => _comments ?? const [];
  bool hasComments() => _comments != null;

  // "summarize" field.
  String? _summarize;
  String get summarize => _summarize ?? '';
  bool hasSummarize() => _summarize != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _body = snapshotData['body'] as String?;
    _author = snapshotData['author'] as String?;
    _tags = getDataList(snapshotData['tags']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _viewCount = castToType<int>(snapshotData['viewCount']);
    _comments = getDataList(snapshotData['comments']);
    _summarize = snapshotData['summarize'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communityArticle');

  static Stream<CommunityArticleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityArticleRecord.fromSnapshot(s));

  static Future<CommunityArticleRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommunityArticleRecord.fromSnapshot(s));

  static CommunityArticleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityArticleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityArticleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityArticleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityArticleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityArticleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityArticleRecordData({
  String? title,
  String? body,
  String? author,
  DateTime? createdAt,
  DateTime? updatedAt,
  int? viewCount,
  String? summarize,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'body': body,
      'author': author,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'viewCount': viewCount,
      'summarize': summarize,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityArticleRecordDocumentEquality
    implements Equality<CommunityArticleRecord> {
  const CommunityArticleRecordDocumentEquality();

  @override
  bool equals(CommunityArticleRecord? e1, CommunityArticleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.body == e2?.body &&
        e1?.author == e2?.author &&
        listEquality.equals(e1?.tags, e2?.tags) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.viewCount == e2?.viewCount &&
        listEquality.equals(e1?.comments, e2?.comments) &&
        e1?.summarize == e2?.summarize;
  }

  @override
  int hash(CommunityArticleRecord? e) => const ListEquality().hash([
        e?.title,
        e?.body,
        e?.author,
        e?.tags,
        e?.createdAt,
        e?.updatedAt,
        e?.viewCount,
        e?.comments,
        e?.summarize
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunityArticleRecord;
}
