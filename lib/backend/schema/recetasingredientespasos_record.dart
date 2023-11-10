import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RecetasingredientespasosRecord extends FirestoreRecord {
  RecetasingredientespasosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "readyinminutes" field.
  int? _readyinminutes;
  int get readyinminutes => _readyinminutes ?? 0;
  bool hasReadyinminutes() => _readyinminutes != null;

  // "servings" field.
  int? _servings;
  int get servings => _servings ?? 0;
  bool hasServings() => _servings != null;

  // "stepnumber" field.
  List<int>? _stepnumber;
  List<int> get stepnumber => _stepnumber ?? const [];
  bool hasStepnumber() => _stepnumber != null;

  // "steps" field.
  List<String>? _steps;
  List<String> get steps => _steps ?? const [];
  bool hasSteps() => _steps != null;

  // "stepsingredients" field.
  List<String>? _stepsingredients;
  List<String> get stepsingredients => _stepsingredients ?? const [];
  bool hasStepsingredients() => _stepsingredients != null;

  // "steptime" field.
  List<int>? _steptime;
  List<int> get steptime => _steptime ?? const [];
  bool hasSteptime() => _steptime != null;

  // "steptimeunit" field.
  List<String>? _steptimeunit;
  List<String> get steptimeunit => _steptimeunit ?? const [];
  bool hasSteptimeunit() => _steptimeunit != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
    _image = snapshotData['image'] as String?;
    _readyinminutes = castToType<int>(snapshotData['readyinminutes']);
    _servings = castToType<int>(snapshotData['servings']);
    _stepnumber = getDataList(snapshotData['stepnumber']);
    _steps = getDataList(snapshotData['steps']);
    _stepsingredients = getDataList(snapshotData['stepsingredients']);
    _steptime = getDataList(snapshotData['steptime']);
    _steptimeunit = getDataList(snapshotData['steptimeunit']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recetasingredientespasos');

  static Stream<RecetasingredientespasosRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => RecetasingredientespasosRecord.fromSnapshot(s));

  static Future<RecetasingredientespasosRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => RecetasingredientespasosRecord.fromSnapshot(s));

  static RecetasingredientespasosRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      RecetasingredientespasosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecetasingredientespasosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecetasingredientespasosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecetasingredientespasosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecetasingredientespasosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecetasingredientespasosRecordData({
  int? id,
  String? title,
  String? image,
  int? readyinminutes,
  int? servings,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'image': image,
      'readyinminutes': readyinminutes,
      'servings': servings,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecetasingredientespasosRecordDocumentEquality
    implements Equality<RecetasingredientespasosRecord> {
  const RecetasingredientespasosRecordDocumentEquality();

  @override
  bool equals(
      RecetasingredientespasosRecord? e1, RecetasingredientespasosRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.image == e2?.image &&
        e1?.readyinminutes == e2?.readyinminutes &&
        e1?.servings == e2?.servings &&
        listEquality.equals(e1?.stepnumber, e2?.stepnumber) &&
        listEquality.equals(e1?.steps, e2?.steps) &&
        listEquality.equals(e1?.stepsingredients, e2?.stepsingredients) &&
        listEquality.equals(e1?.steptime, e2?.steptime) &&
        listEquality.equals(e1?.steptimeunit, e2?.steptimeunit) &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(RecetasingredientespasosRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.image,
        e?.readyinminutes,
        e?.servings,
        e?.stepnumber,
        e?.steps,
        e?.stepsingredients,
        e?.steptime,
        e?.steptimeunit,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is RecetasingredientespasosRecord;
}
