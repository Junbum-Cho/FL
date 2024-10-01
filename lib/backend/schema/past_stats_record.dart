import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PastStatsRecord extends FirestoreRecord {
  PastStatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "schoolName" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  void _initializeFields() {
    _schoolName = snapshotData['schoolName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('PastStats');

  static Stream<PastStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PastStatsRecord.fromSnapshot(s));

  static Future<PastStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PastStatsRecord.fromSnapshot(s));

  static PastStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PastStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PastStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PastStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PastStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PastStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPastStatsRecordData({
  String? schoolName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolName': schoolName,
    }.withoutNulls,
  );

  return firestoreData;
}

class PastStatsRecordDocumentEquality implements Equality<PastStatsRecord> {
  const PastStatsRecordDocumentEquality();

  @override
  bool equals(PastStatsRecord? e1, PastStatsRecord? e2) {
    return e1?.schoolName == e2?.schoolName;
  }

  @override
  int hash(PastStatsRecord? e) => const ListEquality().hash([e?.schoolName]);

  @override
  bool isValidKey(Object? o) => o is PastStatsRecord;
}
