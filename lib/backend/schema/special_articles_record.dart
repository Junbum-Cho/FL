import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecialArticlesRecord extends FirestoreRecord {
  SpecialArticlesRecord._(
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
      FirebaseFirestore.instance.collection('SpecialArticles');

  static Stream<SpecialArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialArticlesRecord.fromSnapshot(s));

  static Future<SpecialArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SpecialArticlesRecord.fromSnapshot(s));

  static SpecialArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialArticlesRecordData({
  String? schoolName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'schoolName': schoolName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialArticlesRecordDocumentEquality
    implements Equality<SpecialArticlesRecord> {
  const SpecialArticlesRecordDocumentEquality();

  @override
  bool equals(SpecialArticlesRecord? e1, SpecialArticlesRecord? e2) {
    return e1?.schoolName == e2?.schoolName;
  }

  @override
  int hash(SpecialArticlesRecord? e) =>
      const ListEquality().hash([e?.schoolName]);

  @override
  bool isValidKey(Object? o) => o is SpecialArticlesRecord;
}
