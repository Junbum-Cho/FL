import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllArticlesRecord extends FirestoreRecord {
  AllArticlesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "Approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Subtitle1" field.
  String? _subtitle1;
  String get subtitle1 => _subtitle1 ?? '';
  bool hasSubtitle1() => _subtitle1 != null;

  // "Subtitle2" field.
  String? _subtitle2;
  String get subtitle2 => _subtitle2 ?? '';
  bool hasSubtitle2() => _subtitle2 != null;

  // "Subtitle3" field.
  String? _subtitle3;
  String get subtitle3 => _subtitle3 ?? '';
  bool hasSubtitle3() => _subtitle3 != null;

  // "Content1" field.
  String? _content1;
  String get content1 => _content1 ?? '';
  bool hasContent1() => _content1 != null;

  // "Content2" field.
  String? _content2;
  String get content2 => _content2 ?? '';
  bool hasContent2() => _content2 != null;

  // "Content3" field.
  String? _content3;
  String get content3 => _content3 ?? '';
  bool hasContent3() => _content3 != null;

  // "Image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "Image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "authorProfileImage" field.
  String? _authorProfileImage;
  String get authorProfileImage => _authorProfileImage ?? '';
  bool hasAuthorProfileImage() => _authorProfileImage != null;

  // "authorSchool" field.
  String? _authorSchool;
  String get authorSchool => _authorSchool ?? '';
  bool hasAuthorSchool() => _authorSchool != null;

  // "cathegory" field.
  List<String>? _cathegory;
  List<String> get cathegory => _cathegory ?? const [];
  bool hasCathegory() => _cathegory != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _author = snapshotData['Author'] as String?;
    _timestamp = snapshotData['Timestamp'] as DateTime?;
    _approved = snapshotData['Approved'] as bool?;
    _image = snapshotData['Image'] as String?;
    _subtitle1 = snapshotData['Subtitle1'] as String?;
    _subtitle2 = snapshotData['Subtitle2'] as String?;
    _subtitle3 = snapshotData['Subtitle3'] as String?;
    _content1 = snapshotData['Content1'] as String?;
    _content2 = snapshotData['Content2'] as String?;
    _content3 = snapshotData['Content3'] as String?;
    _image2 = snapshotData['Image2'] as String?;
    _image3 = snapshotData['Image3'] as String?;
    _authorProfileImage = snapshotData['authorProfileImage'] as String?;
    _authorSchool = snapshotData['authorSchool'] as String?;
    _cathegory = getDataList(snapshotData['cathegory']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('AllArticles')
          : FirebaseFirestore.instance.collectionGroup('AllArticles');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('AllArticles').doc(id);

  static Stream<AllArticlesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllArticlesRecord.fromSnapshot(s));

  static Future<AllArticlesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllArticlesRecord.fromSnapshot(s));

  static AllArticlesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllArticlesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllArticlesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllArticlesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllArticlesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllArticlesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllArticlesRecordData({
  String? title,
  String? author,
  DateTime? timestamp,
  bool? approved,
  String? image,
  String? subtitle1,
  String? subtitle2,
  String? subtitle3,
  String? content1,
  String? content2,
  String? content3,
  String? image2,
  String? image3,
  String? authorProfileImage,
  String? authorSchool,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Author': author,
      'Timestamp': timestamp,
      'Approved': approved,
      'Image': image,
      'Subtitle1': subtitle1,
      'Subtitle2': subtitle2,
      'Subtitle3': subtitle3,
      'Content1': content1,
      'Content2': content2,
      'Content3': content3,
      'Image2': image2,
      'Image3': image3,
      'authorProfileImage': authorProfileImage,
      'authorSchool': authorSchool,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllArticlesRecordDocumentEquality implements Equality<AllArticlesRecord> {
  const AllArticlesRecordDocumentEquality();

  @override
  bool equals(AllArticlesRecord? e1, AllArticlesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.author == e2?.author &&
        e1?.timestamp == e2?.timestamp &&
        e1?.approved == e2?.approved &&
        e1?.image == e2?.image &&
        e1?.subtitle1 == e2?.subtitle1 &&
        e1?.subtitle2 == e2?.subtitle2 &&
        e1?.subtitle3 == e2?.subtitle3 &&
        e1?.content1 == e2?.content1 &&
        e1?.content2 == e2?.content2 &&
        e1?.content3 == e2?.content3 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.authorProfileImage == e2?.authorProfileImage &&
        e1?.authorSchool == e2?.authorSchool &&
        listEquality.equals(e1?.cathegory, e2?.cathegory);
  }

  @override
  int hash(AllArticlesRecord? e) => const ListEquality().hash([
        e?.title,
        e?.author,
        e?.timestamp,
        e?.approved,
        e?.image,
        e?.subtitle1,
        e?.subtitle2,
        e?.subtitle3,
        e?.content1,
        e?.content2,
        e?.content3,
        e?.image2,
        e?.image3,
        e?.authorProfileImage,
        e?.authorSchool,
        e?.cathegory
      ]);

  @override
  bool isValidKey(Object? o) => o is AllArticlesRecord;
}
