import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamsRecord extends FirestoreRecord {
  TeamsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sports_name" field.
  String? _sportsName;
  String get sportsName => _sportsName ?? '';
  bool hasSportsName() => _sportsName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _sportsName = snapshotData['sports_name'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Teams')
          : FirebaseFirestore.instance.collectionGroup('Teams');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Teams').doc(id);

  static Stream<TeamsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamsRecord.fromSnapshot(s));

  static Future<TeamsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamsRecord.fromSnapshot(s));

  static TeamsRecord fromSnapshot(DocumentSnapshot snapshot) => TeamsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamsRecordData({
  String? sportsName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sports_name': sportsName,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamsRecordDocumentEquality implements Equality<TeamsRecord> {
  const TeamsRecordDocumentEquality();

  @override
  bool equals(TeamsRecord? e1, TeamsRecord? e2) {
    return e1?.sportsName == e2?.sportsName;
  }

  @override
  int hash(TeamsRecord? e) => const ListEquality().hash([e?.sportsName]);

  @override
  bool isValidKey(Object? o) => o is TeamsRecord;
}
