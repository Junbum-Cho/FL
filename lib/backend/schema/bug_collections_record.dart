import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BugCollectionsRecord extends FirestoreRecord {
  BugCollectionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "BugTitle" field.
  String? _bugTitle;
  String get bugTitle => _bugTitle ?? '';
  bool hasBugTitle() => _bugTitle != null;

  // "BugDescription" field.
  String? _bugDescription;
  String get bugDescription => _bugDescription ?? '';
  bool hasBugDescription() => _bugDescription != null;

  // "BugScreenShot" field.
  String? _bugScreenShot;
  String get bugScreenShot => _bugScreenShot ?? '';
  bool hasBugScreenShot() => _bugScreenShot != null;

  void _initializeFields() {
    _bugTitle = snapshotData['BugTitle'] as String?;
    _bugDescription = snapshotData['BugDescription'] as String?;
    _bugScreenShot = snapshotData['BugScreenShot'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BugCollections');

  static Stream<BugCollectionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BugCollectionsRecord.fromSnapshot(s));

  static Future<BugCollectionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BugCollectionsRecord.fromSnapshot(s));

  static BugCollectionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BugCollectionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BugCollectionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BugCollectionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BugCollectionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BugCollectionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBugCollectionsRecordData({
  String? bugTitle,
  String? bugDescription,
  String? bugScreenShot,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'BugTitle': bugTitle,
      'BugDescription': bugDescription,
      'BugScreenShot': bugScreenShot,
    }.withoutNulls,
  );

  return firestoreData;
}

class BugCollectionsRecordDocumentEquality
    implements Equality<BugCollectionsRecord> {
  const BugCollectionsRecordDocumentEquality();

  @override
  bool equals(BugCollectionsRecord? e1, BugCollectionsRecord? e2) {
    return e1?.bugTitle == e2?.bugTitle &&
        e1?.bugDescription == e2?.bugDescription &&
        e1?.bugScreenShot == e2?.bugScreenShot;
  }

  @override
  int hash(BugCollectionsRecord? e) => const ListEquality()
      .hash([e?.bugTitle, e?.bugDescription, e?.bugScreenShot]);

  @override
  bool isValidKey(Object? o) => o is BugCollectionsRecord;
}
