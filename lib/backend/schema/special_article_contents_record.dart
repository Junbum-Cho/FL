import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SpecialArticleContentsRecord extends FirestoreRecord {
  SpecialArticleContentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SpecialArticleContents')
          : FirebaseFirestore.instance
              .collectionGroup('SpecialArticleContents');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('SpecialArticleContents').doc(id);

  static Stream<SpecialArticleContentsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => SpecialArticleContentsRecord.fromSnapshot(s));

  static Future<SpecialArticleContentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => SpecialArticleContentsRecord.fromSnapshot(s));

  static SpecialArticleContentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SpecialArticleContentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SpecialArticleContentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SpecialArticleContentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SpecialArticleContentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SpecialArticleContentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSpecialArticleContentsRecordData({
  String? title,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class SpecialArticleContentsRecordDocumentEquality
    implements Equality<SpecialArticleContentsRecord> {
  const SpecialArticleContentsRecordDocumentEquality();

  @override
  bool equals(
      SpecialArticleContentsRecord? e1, SpecialArticleContentsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(SpecialArticleContentsRecord? e) =>
      const ListEquality().hash([e?.title, e?.image, e?.description]);

  @override
  bool isValidKey(Object? o) => o is SpecialArticleContentsRecord;
}
