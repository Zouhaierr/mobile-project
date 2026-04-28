import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunityArticleCommentRecord extends FirestoreRecord {
  CommunityArticleCommentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "articleRef" field.
  DocumentReference? _articleRef;
  DocumentReference? get articleRef => _articleRef;
  bool hasArticleRef() => _articleRef != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "body" field.
  String? _body;
  String get body => _body ?? '';
  bool hasBody() => _body != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  void _initializeFields() {
    _articleRef = snapshotData['articleRef'] as DocumentReference?;
    _author = snapshotData['author'] as String?;
    _body = snapshotData['body'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communityArticleComment');

  static Stream<CommunityArticleCommentRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityArticleCommentRecord.fromSnapshot(s));

  static Future<CommunityArticleCommentRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommunityArticleCommentRecord.fromSnapshot(s));

  static CommunityArticleCommentRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      CommunityArticleCommentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityArticleCommentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityArticleCommentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityArticleCommentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityArticleCommentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityArticleCommentRecordData({
  DocumentReference? articleRef,
  String? author,
  String? body,
  DateTime? createdAt,
  bool? isDeleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'articleRef': articleRef,
      'author': author,
      'body': body,
      'createdAt': createdAt,
      'isDeleted': isDeleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityArticleCommentRecordDocumentEquality
    implements Equality<CommunityArticleCommentRecord> {
  const CommunityArticleCommentRecordDocumentEquality();

  @override
  bool equals(
      CommunityArticleCommentRecord? e1, CommunityArticleCommentRecord? e2) {
    return e1?.articleRef == e2?.articleRef &&
        e1?.author == e2?.author &&
        e1?.body == e2?.body &&
        e1?.createdAt == e2?.createdAt &&
        e1?.isDeleted == e2?.isDeleted;
  }

  @override
  int hash(CommunityArticleCommentRecord? e) => const ListEquality()
      .hash([e?.articleRef, e?.author, e?.body, e?.createdAt, e?.isDeleted]);

  @override
  bool isValidKey(Object? o) => o is CommunityArticleCommentRecord;
}
