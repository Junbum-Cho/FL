import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DynamicSchedulesRecord extends FirestoreRecord {
  DynamicSchedulesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "schoolName" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "sportsType" field.
  String? _sportsType;
  String get sportsType => _sportsType ?? '';
  bool hasSportsType() => _sportsType != null;

  void _initializeFields() {
    _schoolName = snapshotData['schoolName'] as String?;
    _sportsType = snapshotData['sportsType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DynamicSchedules');

  static Stream<DynamicSchedulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DynamicSchedulesRecord.fromSnapshot(s));

  static Future<DynamicSchedulesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DynamicSchedulesRecord.fromSnapshot(s));

  static DynamicSchedulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DynamicSchedulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DynamicSchedulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DynamicSchedulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DynamicSchedulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DynamicSchedulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDynamicSchedulesRecordData({
  String? schoolName,
  String? sportsType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolName': schoolName,
      'sportsType': sportsType,
    }.withoutNulls,
  );

  return firestoreData;
}

class DynamicSchedulesRecordDocumentEquality
    implements Equality<DynamicSchedulesRecord> {
  const DynamicSchedulesRecordDocumentEquality();

  @override
  bool equals(DynamicSchedulesRecord? e1, DynamicSchedulesRecord? e2) {
    return e1?.schoolName == e2?.schoolName && e1?.sportsType == e2?.sportsType;
  }

  @override
  int hash(DynamicSchedulesRecord? e) =>
      const ListEquality().hash([e?.schoolName, e?.sportsType]);

  @override
  bool isValidKey(Object? o) => o is DynamicSchedulesRecord;
}
