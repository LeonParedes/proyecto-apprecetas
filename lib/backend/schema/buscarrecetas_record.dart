import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BuscarrecetasRecord extends FirestoreRecord {
  BuscarrecetasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  List<int>? _id;
  List<int> get id => _id ?? const [];
  bool hasId() => _id != null;

  // "title" field.
  List<String>? _title;
  List<String> get title => _title ?? const [];
  bool hasTitle() => _title != null;

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "imagetype" field.
  List<int>? _imagetype;
  List<int> get imagetype => _imagetype ?? const [];
  bool hasImagetype() => _imagetype != null;

  void _initializeFields() {
    _id = getDataList(snapshotData['id']);
    _title = getDataList(snapshotData['title']);
    _image = getDataList(snapshotData['image']);
    _imagetype = getDataList(snapshotData['imagetype']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('buscarrecetas');

  static Stream<BuscarrecetasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BuscarrecetasRecord.fromSnapshot(s));

  static Future<BuscarrecetasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BuscarrecetasRecord.fromSnapshot(s));

  static BuscarrecetasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BuscarrecetasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BuscarrecetasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BuscarrecetasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BuscarrecetasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BuscarrecetasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBuscarrecetasRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class BuscarrecetasRecordDocumentEquality
    implements Equality<BuscarrecetasRecord> {
  const BuscarrecetasRecordDocumentEquality();

  @override
  bool equals(BuscarrecetasRecord? e1, BuscarrecetasRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.id, e2?.id) &&
        listEquality.equals(e1?.title, e2?.title) &&
        listEquality.equals(e1?.image, e2?.image) &&
        listEquality.equals(e1?.imagetype, e2?.imagetype);
  }

  @override
  int hash(BuscarrecetasRecord? e) =>
      const ListEquality().hash([e?.id, e?.title, e?.image, e?.imagetype]);

  @override
  bool isValidKey(Object? o) => o is BuscarrecetasRecord;
}
