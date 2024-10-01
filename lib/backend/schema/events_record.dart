import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "opponent" field.
  String? _opponent;
  String get opponent => _opponent ?? '';
  bool hasOpponent() => _opponent != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "sportsType" field.
  String? _sportsType;
  String get sportsType => _sportsType ?? '';
  bool hasSportsType() => _sportsType != null;

  // "docRef" field.
  String? _docRef;
  String get docRef => _docRef ?? '';
  bool hasDocRef() => _docRef != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "schoolName" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "sportsName" field.
  String? _sportsName;
  String get sportsName => _sportsName ?? '';
  bool hasSportsName() => _sportsName != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _opponent = snapshotData['opponent'] as String?;
    _location = snapshotData['location'] as String?;
    _description = snapshotData['description'] as String?;
    _time = snapshotData['Time'] as DateTime?;
    _sportsType = snapshotData['sportsType'] as String?;
    _docRef = snapshotData['docRef'] as String?;
    _date = snapshotData['date'] as String?;
    _schoolName = snapshotData['schoolName'] as String?;
    _sportsName = snapshotData['sportsName'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Events')
          : FirebaseFirestore.instance.collectionGroup('Events');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Events').doc(id);

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? opponent,
  String? location,
  String? description,
  DateTime? time,
  String? sportsType,
  String? docRef,
  String? date,
  String? schoolName,
  String? sportsName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'opponent': opponent,
      'location': location,
      'description': description,
      'Time': time,
      'sportsType': sportsType,
      'docRef': docRef,
      'date': date,
      'schoolName': schoolName,
      'sportsName': sportsName,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.opponent == e2?.opponent &&
        e1?.location == e2?.location &&
        e1?.description == e2?.description &&
        e1?.time == e2?.time &&
        e1?.sportsType == e2?.sportsType &&
        e1?.docRef == e2?.docRef &&
        e1?.date == e2?.date &&
        e1?.schoolName == e2?.schoolName &&
        e1?.sportsName == e2?.sportsName;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.opponent,
        e?.location,
        e?.description,
        e?.time,
        e?.sportsType,
        e?.docRef,
        e?.date,
        e?.schoolName,
        e?.sportsName
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
