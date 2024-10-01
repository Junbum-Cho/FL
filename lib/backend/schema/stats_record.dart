import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatsRecord extends FirestoreRecord {
  StatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "MostWinsTeam" field.
  String? _mostWinsTeam;
  String get mostWinsTeam => _mostWinsTeam ?? '';
  bool hasMostWinsTeam() => _mostWinsTeam != null;

  // "ThisWeekAthlete" field.
  String? _thisWeekAthlete;
  String get thisWeekAthlete => _thisWeekAthlete ?? '';
  bool hasThisWeekAthlete() => _thisWeekAthlete != null;

  void _initializeFields() {
    _mostWinsTeam = snapshotData['MostWinsTeam'] as String?;
    _thisWeekAthlete = snapshotData['ThisWeekAthlete'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Stats');

  static Stream<StatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatsRecord.fromSnapshot(s));

  static Future<StatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StatsRecord.fromSnapshot(s));

  static StatsRecord fromSnapshot(DocumentSnapshot snapshot) => StatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatsRecordData({
  String? mostWinsTeam,
  String? thisWeekAthlete,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'MostWinsTeam': mostWinsTeam,
      'ThisWeekAthlete': thisWeekAthlete,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatsRecordDocumentEquality implements Equality<StatsRecord> {
  const StatsRecordDocumentEquality();

  @override
  bool equals(StatsRecord? e1, StatsRecord? e2) {
    return e1?.mostWinsTeam == e2?.mostWinsTeam &&
        e1?.thisWeekAthlete == e2?.thisWeekAthlete;
  }

  @override
  int hash(StatsRecord? e) =>
      const ListEquality().hash([e?.mostWinsTeam, e?.thisWeekAthlete]);

  @override
  bool isValidKey(Object? o) => o is StatsRecord;
}
