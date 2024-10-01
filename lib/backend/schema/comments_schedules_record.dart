import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsSchedulesRecord extends FirestoreRecord {
  CommentsSchedulesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "commentContent" field.
  String? _commentContent;
  String get commentContent => _commentContent ?? '';
  bool hasCommentContent() => _commentContent != null;

  // "pageDocRef" field.
  String? _pageDocRef;
  String get pageDocRef => _pageDocRef ?? '';
  bool hasPageDocRef() => _pageDocRef != null;

  // "commenterName" field.
  String? _commenterName;
  String get commenterName => _commenterName ?? '';
  bool hasCommenterName() => _commenterName != null;

  // "commeterImage" field.
  String? _commeterImage;
  String get commeterImage => _commeterImage ?? '';
  bool hasCommeterImage() => _commeterImage != null;

  // "commentTimestamp" field.
  DateTime? _commentTimestamp;
  DateTime? get commentTimestamp => _commentTimestamp;
  bool hasCommentTimestamp() => _commentTimestamp != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentContent = snapshotData['commentContent'] as String?;
    _pageDocRef = snapshotData['pageDocRef'] as String?;
    _commenterName = snapshotData['commenterName'] as String?;
    _commeterImage = snapshotData['commeterImage'] as String?;
    _commentTimestamp = snapshotData['commentTimestamp'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CommentsSchedules')
          : FirebaseFirestore.instance.collectionGroup('CommentsSchedules');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CommentsSchedules').doc(id);

  static Stream<CommentsSchedulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsSchedulesRecord.fromSnapshot(s));

  static Future<CommentsSchedulesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CommentsSchedulesRecord.fromSnapshot(s));

  static CommentsSchedulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsSchedulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsSchedulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsSchedulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsSchedulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsSchedulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsSchedulesRecordData({
  String? commentContent,
  String? pageDocRef,
  String? commenterName,
  String? commeterImage,
  DateTime? commentTimestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentContent': commentContent,
      'pageDocRef': pageDocRef,
      'commenterName': commenterName,
      'commeterImage': commeterImage,
      'commentTimestamp': commentTimestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsSchedulesRecordDocumentEquality
    implements Equality<CommentsSchedulesRecord> {
  const CommentsSchedulesRecordDocumentEquality();

  @override
  bool equals(CommentsSchedulesRecord? e1, CommentsSchedulesRecord? e2) {
    return e1?.commentContent == e2?.commentContent &&
        e1?.pageDocRef == e2?.pageDocRef &&
        e1?.commenterName == e2?.commenterName &&
        e1?.commeterImage == e2?.commeterImage &&
        e1?.commentTimestamp == e2?.commentTimestamp;
  }

  @override
  int hash(CommentsSchedulesRecord? e) => const ListEquality().hash([
        e?.commentContent,
        e?.pageDocRef,
        e?.commenterName,
        e?.commeterImage,
        e?.commentTimestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsSchedulesRecord;
}
