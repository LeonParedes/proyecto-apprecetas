// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetaingredientepasosStruct extends FFFirebaseStruct {
  RecetaingredientepasosStruct({
    int? id,
    String? title,
    String? image,
    int? readyinminutes,
    int? servings,
    List<int>? stepnumber,
    List<String>? steps,
    List<String>? stepsingredients,
    List<int>? steptime,
    List<int>? steptimeunit,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _image = image,
        _readyinminutes = readyinminutes,
        _servings = servings,
        _stepnumber = stepnumber,
        _steps = steps,
        _stepsingredients = stepsingredients,
        _steptime = steptime,
        _steptimeunit = steptimeunit,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;
  bool hasTitle() => _title != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "readyinminutes" field.
  int? _readyinminutes;
  int get readyinminutes => _readyinminutes ?? 0;
  set readyinminutes(int? val) => _readyinminutes = val;
  void incrementReadyinminutes(int amount) =>
      _readyinminutes = readyinminutes + amount;
  bool hasReadyinminutes() => _readyinminutes != null;

  // "servings" field.
  int? _servings;
  int get servings => _servings ?? 0;
  set servings(int? val) => _servings = val;
  void incrementServings(int amount) => _servings = servings + amount;
  bool hasServings() => _servings != null;

  // "stepnumber" field.
  List<int>? _stepnumber;
  List<int> get stepnumber => _stepnumber ?? const [];
  set stepnumber(List<int>? val) => _stepnumber = val;
  void updateStepnumber(Function(List<int>) updateFn) =>
      updateFn(_stepnumber ??= []);
  bool hasStepnumber() => _stepnumber != null;

  // "steps" field.
  List<String>? _steps;
  List<String> get steps => _steps ?? const [];
  set steps(List<String>? val) => _steps = val;
  void updateSteps(Function(List<String>) updateFn) => updateFn(_steps ??= []);
  bool hasSteps() => _steps != null;

  // "stepsingredients" field.
  List<String>? _stepsingredients;
  List<String> get stepsingredients => _stepsingredients ?? const [];
  set stepsingredients(List<String>? val) => _stepsingredients = val;
  void updateStepsingredients(Function(List<String>) updateFn) =>
      updateFn(_stepsingredients ??= []);
  bool hasStepsingredients() => _stepsingredients != null;

  // "steptime" field.
  List<int>? _steptime;
  List<int> get steptime => _steptime ?? const [];
  set steptime(List<int>? val) => _steptime = val;
  void updateSteptime(Function(List<int>) updateFn) =>
      updateFn(_steptime ??= []);
  bool hasSteptime() => _steptime != null;

  // "steptimeunit" field.
  List<int>? _steptimeunit;
  List<int> get steptimeunit => _steptimeunit ?? const [];
  set steptimeunit(List<int>? val) => _steptimeunit = val;
  void updateSteptimeunit(Function(List<int>) updateFn) =>
      updateFn(_steptimeunit ??= []);
  bool hasSteptimeunit() => _steptimeunit != null;

  static RecetaingredientepasosStruct fromMap(Map<String, dynamic> data) =>
      RecetaingredientepasosStruct(
        id: castToType<int>(data['id']),
        title: data['title'] as String?,
        image: data['image'] as String?,
        readyinminutes: castToType<int>(data['readyinminutes']),
        servings: castToType<int>(data['servings']),
        stepnumber: getDataList(data['stepnumber']),
        steps: getDataList(data['steps']),
        stepsingredients: getDataList(data['stepsingredients']),
        steptime: getDataList(data['steptime']),
        steptimeunit: getDataList(data['steptimeunit']),
      );

  static RecetaingredientepasosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? RecetaingredientepasosStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'image': _image,
        'readyinminutes': _readyinminutes,
        'servings': _servings,
        'stepnumber': _stepnumber,
        'steps': _steps,
        'stepsingredients': _stepsingredients,
        'steptime': _steptime,
        'steptimeunit': _steptimeunit,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'readyinminutes': serializeParam(
          _readyinminutes,
          ParamType.int,
        ),
        'servings': serializeParam(
          _servings,
          ParamType.int,
        ),
        'stepnumber': serializeParam(
          _stepnumber,
          ParamType.int,
          true,
        ),
        'steps': serializeParam(
          _steps,
          ParamType.String,
          true,
        ),
        'stepsingredients': serializeParam(
          _stepsingredients,
          ParamType.String,
          true,
        ),
        'steptime': serializeParam(
          _steptime,
          ParamType.int,
          true,
        ),
        'steptimeunit': serializeParam(
          _steptimeunit,
          ParamType.int,
          true,
        ),
      }.withoutNulls;

  static RecetaingredientepasosStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecetaingredientepasosStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        readyinminutes: deserializeParam(
          data['readyinminutes'],
          ParamType.int,
          false,
        ),
        servings: deserializeParam(
          data['servings'],
          ParamType.int,
          false,
        ),
        stepnumber: deserializeParam<int>(
          data['stepnumber'],
          ParamType.int,
          true,
        ),
        steps: deserializeParam<String>(
          data['steps'],
          ParamType.String,
          true,
        ),
        stepsingredients: deserializeParam<String>(
          data['stepsingredients'],
          ParamType.String,
          true,
        ),
        steptime: deserializeParam<int>(
          data['steptime'],
          ParamType.int,
          true,
        ),
        steptimeunit: deserializeParam<int>(
          data['steptimeunit'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'RecetaingredientepasosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecetaingredientepasosStruct &&
        id == other.id &&
        title == other.title &&
        image == other.image &&
        readyinminutes == other.readyinminutes &&
        servings == other.servings &&
        listEquality.equals(stepnumber, other.stepnumber) &&
        listEquality.equals(steps, other.steps) &&
        listEquality.equals(stepsingredients, other.stepsingredients) &&
        listEquality.equals(steptime, other.steptime) &&
        listEquality.equals(steptimeunit, other.steptimeunit);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        image,
        readyinminutes,
        servings,
        stepnumber,
        steps,
        stepsingredients,
        steptime,
        steptimeunit
      ]);
}

RecetaingredientepasosStruct createRecetaingredientepasosStruct({
  int? id,
  String? title,
  String? image,
  int? readyinminutes,
  int? servings,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecetaingredientepasosStruct(
      id: id,
      title: title,
      image: image,
      readyinminutes: readyinminutes,
      servings: servings,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecetaingredientepasosStruct? updateRecetaingredientepasosStruct(
  RecetaingredientepasosStruct? recetaingredientepasos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recetaingredientepasos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecetaingredientepasosStructData(
  Map<String, dynamic> firestoreData,
  RecetaingredientepasosStruct? recetaingredientepasos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recetaingredientepasos == null) {
    return;
  }
  if (recetaingredientepasos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      recetaingredientepasos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recetaingredientepasosData = getRecetaingredientepasosFirestoreData(
      recetaingredientepasos, forFieldValue);
  final nestedData =
      recetaingredientepasosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      recetaingredientepasos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecetaingredientepasosFirestoreData(
  RecetaingredientepasosStruct? recetaingredientepasos, [
  bool forFieldValue = false,
]) {
  if (recetaingredientepasos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recetaingredientepasos.toMap());

  // Add any Firestore field values
  recetaingredientepasos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecetaingredientepasosListFirestoreData(
  List<RecetaingredientepasosStruct>? recetaingredientepasoss,
) =>
    recetaingredientepasoss
        ?.map((e) => getRecetaingredientepasosFirestoreData(e, true))
        .toList() ??
    [];
