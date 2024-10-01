import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ResultsRecord extends FirestoreRecord {
  ResultsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "schoolOneScore" field.
  int? _schoolOneScore;
  int get schoolOneScore => _schoolOneScore ?? 0;
  bool hasSchoolOneScore() => _schoolOneScore != null;

  // "schoolTwoScore" field.
  int? _schoolTwoScore;
  int get schoolTwoScore => _schoolTwoScore ?? 0;
  bool hasSchoolTwoScore() => _schoolTwoScore != null;

  // "matchDate" field.
  String? _matchDate;
  String get matchDate => _matchDate ?? '';
  bool hasMatchDate() => _matchDate != null;

  // "opponent" field.
  String? _opponent;
  String get opponent => _opponent ?? '';
  bool hasOpponent() => _opponent != null;

  // "sportsType" field.
  String? _sportsType;
  String get sportsType => _sportsType ?? '';
  bool hasSportsType() => _sportsType != null;

  // "matchLocation" field.
  String? _matchLocation;
  String get matchLocation => _matchLocation ?? '';
  bool hasMatchLocation() => _matchLocation != null;

  // "docID" field.
  String? _docID;
  String get docID => _docID ?? '';
  bool hasDocID() => _docID != null;

  // "schoolOneName" field.
  String? _schoolOneName;
  String get schoolOneName => _schoolOneName ?? '';
  bool hasSchoolOneName() => _schoolOneName != null;

  // "sportsName" field.
  String? _sportsName;
  String get sportsName => _sportsName ?? '';
  bool hasSportsName() => _sportsName != null;

  // "sportsSeason" field.
  String? _sportsSeason;
  String get sportsSeason => _sportsSeason ?? '';
  bool hasSportsSeason() => _sportsSeason != null;

  // "bestPlayer" field.
  List<String>? _bestPlayer;
  List<String> get bestPlayer => _bestPlayer ?? const [];
  bool hasBestPlayer() => _bestPlayer != null;

  // "matchTime" field.
  DateTime? _matchTime;
  DateTime? get matchTime => _matchTime;
  bool hasMatchTime() => _matchTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _schoolOneScore = castToType<int>(snapshotData['schoolOneScore']);
    _schoolTwoScore = castToType<int>(snapshotData['schoolTwoScore']);
    _matchDate = snapshotData['matchDate'] as String?;
    _opponent = snapshotData['opponent'] as String?;
    _sportsType = snapshotData['sportsType'] as String?;
    _matchLocation = snapshotData['matchLocation'] as String?;
    _docID = snapshotData['docID'] as String?;
    _schoolOneName = snapshotData['schoolOneName'] as String?;
    _sportsName = snapshotData['sportsName'] as String?;
    _sportsSeason = snapshotData['sportsSeason'] as String?;
    _bestPlayer = getDataList(snapshotData['bestPlayer']);
    _matchTime = snapshotData['matchTime'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('results')
          : FirebaseFirestore.instance.collectionGroup('results');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('results').doc(id);

  static Stream<ResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ResultsRecord.fromSnapshot(s));

  static Future<ResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ResultsRecord.fromSnapshot(s));

  static ResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createResultsRecordData({
  int? schoolOneScore,
  int? schoolTwoScore,
  String? matchDate,
  String? opponent,
  String? sportsType,
  String? matchLocation,
  String? docID,
  String? schoolOneName,
  String? sportsName,
  String? sportsSeason,
  DateTime? matchTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolOneScore': schoolOneScore,
      'schoolTwoScore': schoolTwoScore,
      'matchDate': matchDate,
      'opponent': opponent,
      'sportsType': sportsType,
      'matchLocation': matchLocation,
      'docID': docID,
      'schoolOneName': schoolOneName,
      'sportsName': sportsName,
      'sportsSeason': sportsSeason,
      'matchTime': matchTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ResultsRecordDocumentEquality implements Equality<ResultsRecord> {
  const ResultsRecordDocumentEquality();

  @override
  bool equals(ResultsRecord? e1, ResultsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.schoolOneScore == e2?.schoolOneScore &&
        e1?.schoolTwoScore == e2?.schoolTwoScore &&
        e1?.matchDate == e2?.matchDate &&
        e1?.opponent == e2?.opponent &&
        e1?.sportsType == e2?.sportsType &&
        e1?.matchLocation == e2?.matchLocation &&
        e1?.docID == e2?.docID &&
        e1?.schoolOneName == e2?.schoolOneName &&
        e1?.sportsName == e2?.sportsName &&
        e1?.sportsSeason == e2?.sportsSeason &&
        listEquality.equals(e1?.bestPlayer, e2?.bestPlayer) &&
        e1?.matchTime == e2?.matchTime;
  }

  @override
  int hash(ResultsRecord? e) => const ListEquality().hash([
        e?.schoolOneScore,
        e?.schoolTwoScore,
        e?.matchDate,
        e?.opponent,
        e?.sportsType,
        e?.matchLocation,
        e?.docID,
        e?.schoolOneName,
        e?.sportsName,
        e?.sportsSeason,
        e?.bestPlayer,
        e?.matchTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ResultsRecord;
}
