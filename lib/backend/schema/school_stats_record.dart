import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolStatsRecord extends FirestoreRecord {
  SchoolStatsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "thisWeeksAthlete" field.
  String? _thisWeeksAthlete;
  String get thisWeeksAthlete => _thisWeeksAthlete ?? '';
  bool hasThisWeeksAthlete() => _thisWeeksAthlete != null;

  // "mostDefensiveTeam" field.
  String? _mostDefensiveTeam;
  String get mostDefensiveTeam => _mostDefensiveTeam ?? '';
  bool hasMostDefensiveTeam() => _mostDefensiveTeam != null;

  // "mostOffensiveTeam" field.
  String? _mostOffensiveTeam;
  String get mostOffensiveTeam => _mostOffensiveTeam ?? '';
  bool hasMostOffensiveTeam() => _mostOffensiveTeam != null;

  // "mostWinTeam" field.
  String? _mostWinTeam;
  String get mostWinTeam => _mostWinTeam ?? '';
  bool hasMostWinTeam() => _mostWinTeam != null;

  // "schoolName" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "thisWeeksAthleteImage" field.
  String? _thisWeeksAthleteImage;
  String get thisWeeksAthleteImage => _thisWeeksAthleteImage ?? '';
  bool hasThisWeeksAthleteImage() => _thisWeeksAthleteImage != null;

  // "mostDefensiveTeamImage" field.
  String? _mostDefensiveTeamImage;
  String get mostDefensiveTeamImage => _mostDefensiveTeamImage ?? '';
  bool hasMostDefensiveTeamImage() => _mostDefensiveTeamImage != null;

  // "mostOffensiveTeamImage" field.
  String? _mostOffensiveTeamImage;
  String get mostOffensiveTeamImage => _mostOffensiveTeamImage ?? '';
  bool hasMostOffensiveTeamImage() => _mostOffensiveTeamImage != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _thisWeeksAthlete = snapshotData['thisWeeksAthlete'] as String?;
    _mostDefensiveTeam = snapshotData['mostDefensiveTeam'] as String?;
    _mostOffensiveTeam = snapshotData['mostOffensiveTeam'] as String?;
    _mostWinTeam = snapshotData['mostWinTeam'] as String?;
    _schoolName = snapshotData['schoolName'] as String?;
    _thisWeeksAthleteImage = snapshotData['thisWeeksAthleteImage'] as String?;
    _mostDefensiveTeamImage = snapshotData['mostDefensiveTeamImage'] as String?;
    _mostOffensiveTeamImage = snapshotData['mostOffensiveTeamImage'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('schoolStats')
          : FirebaseFirestore.instance.collectionGroup('schoolStats');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('schoolStats').doc(id);

  static Stream<SchoolStatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchoolStatsRecord.fromSnapshot(s));

  static Future<SchoolStatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchoolStatsRecord.fromSnapshot(s));

  static SchoolStatsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchoolStatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchoolStatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchoolStatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchoolStatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchoolStatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchoolStatsRecordData({
  String? thisWeeksAthlete,
  String? mostDefensiveTeam,
  String? mostOffensiveTeam,
  String? mostWinTeam,
  String? schoolName,
  String? thisWeeksAthleteImage,
  String? mostDefensiveTeamImage,
  String? mostOffensiveTeamImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'thisWeeksAthlete': thisWeeksAthlete,
      'mostDefensiveTeam': mostDefensiveTeam,
      'mostOffensiveTeam': mostOffensiveTeam,
      'mostWinTeam': mostWinTeam,
      'schoolName': schoolName,
      'thisWeeksAthleteImage': thisWeeksAthleteImage,
      'mostDefensiveTeamImage': mostDefensiveTeamImage,
      'mostOffensiveTeamImage': mostOffensiveTeamImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchoolStatsRecordDocumentEquality implements Equality<SchoolStatsRecord> {
  const SchoolStatsRecordDocumentEquality();

  @override
  bool equals(SchoolStatsRecord? e1, SchoolStatsRecord? e2) {
    return e1?.thisWeeksAthlete == e2?.thisWeeksAthlete &&
        e1?.mostDefensiveTeam == e2?.mostDefensiveTeam &&
        e1?.mostOffensiveTeam == e2?.mostOffensiveTeam &&
        e1?.mostWinTeam == e2?.mostWinTeam &&
        e1?.schoolName == e2?.schoolName &&
        e1?.thisWeeksAthleteImage == e2?.thisWeeksAthleteImage &&
        e1?.mostDefensiveTeamImage == e2?.mostDefensiveTeamImage &&
        e1?.mostOffensiveTeamImage == e2?.mostOffensiveTeamImage;
  }

  @override
  int hash(SchoolStatsRecord? e) => const ListEquality().hash([
        e?.thisWeeksAthlete,
        e?.mostDefensiveTeam,
        e?.mostOffensiveTeam,
        e?.mostWinTeam,
        e?.schoolName,
        e?.thisWeeksAthleteImage,
        e?.mostDefensiveTeamImage,
        e?.mostOffensiveTeamImage
      ]);

  @override
  bool isValidKey(Object? o) => o is SchoolStatsRecord;
}
