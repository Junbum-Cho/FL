import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DevRequestRecord extends FirestoreRecord {
  DevRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "photoURL" field.
  String? _photoURL;
  String get photoURL => _photoURL ?? '';
  bool hasPhotoURL() => _photoURL != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _photoURL = snapshotData['photoURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DevRequest');

  static Stream<DevRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DevRequestRecord.fromSnapshot(s));

  static Future<DevRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DevRequestRecord.fromSnapshot(s));

  static DevRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DevRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DevRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DevRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DevRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DevRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDevRequestRecordData({
  String? title,
  String? description,
  String? photoURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'photoURL': photoURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class DevRequestRecordDocumentEquality implements Equality<DevRequestRecord> {
  const DevRequestRecordDocumentEquality();

  @override
  bool equals(DevRequestRecord? e1, DevRequestRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.photoURL == e2?.photoURL;
  }

  @override
  int hash(DevRequestRecord? e) =>
      const ListEquality().hash([e?.title, e?.description, e?.photoURL]);

  @override
  bool isValidKey(Object? o) => o is DevRequestRecord;
}
