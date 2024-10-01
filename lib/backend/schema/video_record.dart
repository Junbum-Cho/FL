import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VideoRecord extends FirestoreRecord {
  VideoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  void _initializeFields() {
    _video = snapshotData['video'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VideoRecord.fromSnapshot(s));

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VideoRecord.fromSnapshot(s));

  static VideoRecord fromSnapshot(DocumentSnapshot snapshot) => VideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVideoRecordData({
  String? video,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'video': video,
    }.withoutNulls,
  );

  return firestoreData;
}

class VideoRecordDocumentEquality implements Equality<VideoRecord> {
  const VideoRecordDocumentEquality();

  @override
  bool equals(VideoRecord? e1, VideoRecord? e2) {
    return e1?.video == e2?.video;
  }

  @override
  int hash(VideoRecord? e) => const ListEquality().hash([e?.video]);

  @override
  bool isValidKey(Object? o) => o is VideoRecord;
}
