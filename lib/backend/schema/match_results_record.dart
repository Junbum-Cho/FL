import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MatchResultsRecord extends FirestoreRecord {
  MatchResultsRecord._(
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
      FirebaseFirestore.instance.collection('MatchResults');

  static Stream<MatchResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MatchResultsRecord.fromSnapshot(s));

  static Future<MatchResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MatchResultsRecord.fromSnapshot(s));

  static MatchResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MatchResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MatchResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MatchResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MatchResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MatchResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMatchResultsRecordData({
  String? schoolName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolName': schoolName,
    }.withoutNulls,
  );

  return firestoreData;
}

class MatchResultsRecordDocumentEquality
    implements Equality<MatchResultsRecord> {
  const MatchResultsRecordDocumentEquality();

  @override
  bool equals(MatchResultsRecord? e1, MatchResultsRecord? e2) {
    return e1?.schoolName == e2?.schoolName;
  }

  @override
  int hash(MatchResultsRecord? e) => const ListEquality().hash([e?.schoolName]);

  @override
  bool isValidKey(Object? o) => o is MatchResultsRecord;
}
