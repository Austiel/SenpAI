import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonItemsRecord extends FirestoreRecord {
  LessonItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "info" field.
  String? _info;
  String get info => _info ?? '';
  bool hasInfo() => _info != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "activities" field.
  List<String>? _activities;
  List<String> get activities => _activities ?? const [];
  bool hasActivities() => _activities != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _info = snapshotData['info'] as String?;
    _link = snapshotData['link'] as String?;
    _activities = getDataList(snapshotData['activities']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('lesson_items')
          : FirebaseFirestore.instance.collectionGroup('lesson_items');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('lesson_items').doc(id);

  static Stream<LessonItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonItemsRecord.fromSnapshot(s));

  static Future<LessonItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonItemsRecord.fromSnapshot(s));

  static LessonItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonItemsRecordData({
  String? title,
  String? info,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'info': info,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonItemsRecordDocumentEquality implements Equality<LessonItemsRecord> {
  const LessonItemsRecordDocumentEquality();

  @override
  bool equals(LessonItemsRecord? e1, LessonItemsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.info == e2?.info &&
        e1?.link == e2?.link &&
        listEquality.equals(e1?.activities, e2?.activities);
  }

  @override
  int hash(LessonItemsRecord? e) =>
      const ListEquality().hash([e?.title, e?.info, e?.link, e?.activities]);

  @override
  bool isValidKey(Object? o) => o is LessonItemsRecord;
}
