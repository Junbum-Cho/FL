import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatisticsRecord extends FirestoreRecord {
  StatisticsRecord._(
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
      FirebaseFirestore.instance.collection('Statistics');

  static Stream<StatisticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatisticsRecord.fromSnapshot(s));

  static Future<StatisticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StatisticsRecord.fromSnapshot(s));

  static StatisticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StatisticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatisticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatisticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatisticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatisticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatisticsRecordData({
  String? schoolName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolName': schoolName,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatisticsRecordDocumentEquality implements Equality<StatisticsRecord> {
  const StatisticsRecordDocumentEquality();

  @override
  bool equals(StatisticsRecord? e1, StatisticsRecord? e2) {
    return e1?.schoolName == e2?.schoolName;
  }

  @override
  int hash(StatisticsRecord? e) => const ListEquality().hash([e?.schoolName]);

  @override
  bool isValidKey(Object? o) => o is StatisticsRecord;
}
