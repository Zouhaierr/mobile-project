import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityRecord extends FirestoreRecord {
  ActivityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;

  /// Task name
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;

  /// Task details
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "status" field.
  String? _status;

  /// Backlog / To Do / In Progress / Done
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "due_date" field.
  DateTime? _dueDate;

  /// Task deadline
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "proof_of_work_url" field.
  String? _proofOfWorkUrl;

  /// Link to uploaded file
  String get proofOfWorkUrl => _proofOfWorkUrl ?? '';
  bool hasProofOfWorkUrl() => _proofOfWorkUrl != null;

  // "created_at" field.
  DateTime? _createdAt;

  /// Auto timestamp
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "priority" field.
  String? _priority;

  /// Low / Medium / High
  String get priority => _priority ?? '';
  bool hasPriority() => _priority != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _status = snapshotData['status'] as String?;
    _dueDate = snapshotData['due_date'] as DateTime?;
    _proofOfWorkUrl = snapshotData['proof_of_work_url'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
    _priority = snapshotData['priority'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity');

  static Stream<ActivityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityRecord.fromSnapshot(s));

  static Future<ActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityRecord.fromSnapshot(s));

  static ActivityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityRecordData({
  String? title,
  String? description,
  String? status,
  DateTime? dueDate,
  String? proofOfWorkUrl,
  DateTime? createdAt,
  DocumentReference? userRef,
  String? priority,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'status': status,
      'due_date': dueDate,
      'proof_of_work_url': proofOfWorkUrl,
      'created_at': createdAt,
      'user_ref': userRef,
      'priority': priority,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityRecordDocumentEquality implements Equality<ActivityRecord> {
  const ActivityRecordDocumentEquality();

  @override
  bool equals(ActivityRecord? e1, ActivityRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.status == e2?.status &&
        e1?.dueDate == e2?.dueDate &&
        e1?.proofOfWorkUrl == e2?.proofOfWorkUrl &&
        e1?.createdAt == e2?.createdAt &&
        e1?.userRef == e2?.userRef &&
        e1?.priority == e2?.priority;
  }

  @override
  int hash(ActivityRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.status,
        e?.dueDate,
        e?.proofOfWorkUrl,
        e?.createdAt,
        e?.userRef,
        e?.priority
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityRecord;
}
