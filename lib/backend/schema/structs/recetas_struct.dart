// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetasStruct extends FFFirebaseStruct {
  RecetasStruct({
    List<String>? instructions,
    List<String>? ingredients,
    DateTime? timerequired,
    List<String>? titulo,
    String? video,
    double? carbohydratos,
    double? fibra,
    DocumentReference? actualizacion,
    double? proteina,
    double? grasa,
    double? calorias,
    double? azucar,
    List<String>? recepieName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _instructions = instructions,
        _ingredients = ingredients,
        _timerequired = timerequired,
        _titulo = titulo,
        _video = video,
        _carbohydratos = carbohydratos,
        _fibra = fibra,
        _actualizacion = actualizacion,
        _proteina = proteina,
        _grasa = grasa,
        _calorias = calorias,
        _azucar = azucar,
        _recepieName = recepieName,
        super(firestoreUtilData);

  // "instructions" field.
  List<String>? _instructions;
  List<String> get instructions => _instructions ?? const [];
  set instructions(List<String>? val) => _instructions = val;
  void updateInstructions(Function(List<String>) updateFn) =>
      updateFn(_instructions ??= []);
  bool hasInstructions() => _instructions != null;

  // "ingredients" field.
  List<String>? _ingredients;
  List<String> get ingredients => _ingredients ?? const [];
  set ingredients(List<String>? val) => _ingredients = val;
  void updateIngredients(Function(List<String>) updateFn) =>
      updateFn(_ingredients ??= []);
  bool hasIngredients() => _ingredients != null;

  // "timerequired" field.
  DateTime? _timerequired;
  DateTime? get timerequired => _timerequired;
  set timerequired(DateTime? val) => _timerequired = val;
  bool hasTimerequired() => _timerequired != null;

  // "titulo" field.
  List<String>? _titulo;
  List<String> get titulo => _titulo ?? const [];
  set titulo(List<String>? val) => _titulo = val;
  void updateTitulo(Function(List<String>) updateFn) =>
      updateFn(_titulo ??= []);
  bool hasTitulo() => _titulo != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  set video(String? val) => _video = val;
  bool hasVideo() => _video != null;

  // "carbohydratos" field.
  double? _carbohydratos;
  double get carbohydratos => _carbohydratos ?? 0.0;
  set carbohydratos(double? val) => _carbohydratos = val;
  void incrementCarbohydratos(double amount) =>
      _carbohydratos = carbohydratos + amount;
  bool hasCarbohydratos() => _carbohydratos != null;

  // "fibra" field.
  double? _fibra;
  double get fibra => _fibra ?? 0.0;
  set fibra(double? val) => _fibra = val;
  void incrementFibra(double amount) => _fibra = fibra + amount;
  bool hasFibra() => _fibra != null;

  // "actualizacion" field.
  DocumentReference? _actualizacion;
  DocumentReference? get actualizacion => _actualizacion;
  set actualizacion(DocumentReference? val) => _actualizacion = val;
  bool hasActualizacion() => _actualizacion != null;

  // "proteina" field.
  double? _proteina;
  double get proteina => _proteina ?? 0.0;
  set proteina(double? val) => _proteina = val;
  void incrementProteina(double amount) => _proteina = proteina + amount;
  bool hasProteina() => _proteina != null;

  // "grasa" field.
  double? _grasa;
  double get grasa => _grasa ?? 0.0;
  set grasa(double? val) => _grasa = val;
  void incrementGrasa(double amount) => _grasa = grasa + amount;
  bool hasGrasa() => _grasa != null;

  // "calorias" field.
  double? _calorias;
  double get calorias => _calorias ?? 0.0;
  set calorias(double? val) => _calorias = val;
  void incrementCalorias(double amount) => _calorias = calorias + amount;
  bool hasCalorias() => _calorias != null;

  // "azucar" field.
  double? _azucar;
  double get azucar => _azucar ?? 0.0;
  set azucar(double? val) => _azucar = val;
  void incrementAzucar(double amount) => _azucar = azucar + amount;
  bool hasAzucar() => _azucar != null;

  // "recepieName" field.
  List<String>? _recepieName;
  List<String> get recepieName => _recepieName ?? const [];
  set recepieName(List<String>? val) => _recepieName = val;
  void updateRecepieName(Function(List<String>) updateFn) =>
      updateFn(_recepieName ??= []);
  bool hasRecepieName() => _recepieName != null;

  static RecetasStruct fromMap(Map<String, dynamic> data) => RecetasStruct(
        instructions: getDataList(data['instructions']),
        ingredients: getDataList(data['ingredients']),
        timerequired: data['timerequired'] as DateTime?,
        titulo: getDataList(data['titulo']),
        video: data['video'] as String?,
        carbohydratos: castToType<double>(data['carbohydratos']),
        fibra: castToType<double>(data['fibra']),
        actualizacion: data['actualizacion'] as DocumentReference?,
        proteina: castToType<double>(data['proteina']),
        grasa: castToType<double>(data['grasa']),
        calorias: castToType<double>(data['calorias']),
        azucar: castToType<double>(data['azucar']),
        recepieName: getDataList(data['recepieName']),
      );

  static RecetasStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RecetasStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'instructions': _instructions,
        'ingredients': _ingredients,
        'timerequired': _timerequired,
        'titulo': _titulo,
        'video': _video,
        'carbohydratos': _carbohydratos,
        'fibra': _fibra,
        'actualizacion': _actualizacion,
        'proteina': _proteina,
        'grasa': _grasa,
        'calorias': _calorias,
        'azucar': _azucar,
        'recepieName': _recepieName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'instructions': serializeParam(
          _instructions,
          ParamType.String,
          true,
        ),
        'ingredients': serializeParam(
          _ingredients,
          ParamType.String,
          true,
        ),
        'timerequired': serializeParam(
          _timerequired,
          ParamType.DateTime,
        ),
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
          true,
        ),
        'video': serializeParam(
          _video,
          ParamType.String,
        ),
        'carbohydratos': serializeParam(
          _carbohydratos,
          ParamType.double,
        ),
        'fibra': serializeParam(
          _fibra,
          ParamType.double,
        ),
        'actualizacion': serializeParam(
          _actualizacion,
          ParamType.DocumentReference,
        ),
        'proteina': serializeParam(
          _proteina,
          ParamType.double,
        ),
        'grasa': serializeParam(
          _grasa,
          ParamType.double,
        ),
        'calorias': serializeParam(
          _calorias,
          ParamType.double,
        ),
        'azucar': serializeParam(
          _azucar,
          ParamType.double,
        ),
        'recepieName': serializeParam(
          _recepieName,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static RecetasStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecetasStruct(
        instructions: deserializeParam<String>(
          data['instructions'],
          ParamType.String,
          true,
        ),
        ingredients: deserializeParam<String>(
          data['ingredients'],
          ParamType.String,
          true,
        ),
        timerequired: deserializeParam(
          data['timerequired'],
          ParamType.DateTime,
          false,
        ),
        titulo: deserializeParam<String>(
          data['titulo'],
          ParamType.String,
          true,
        ),
        video: deserializeParam(
          data['video'],
          ParamType.String,
          false,
        ),
        carbohydratos: deserializeParam(
          data['carbohydratos'],
          ParamType.double,
          false,
        ),
        fibra: deserializeParam(
          data['fibra'],
          ParamType.double,
          false,
        ),
        actualizacion: deserializeParam(
          data['actualizacion'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['buscarrecetas'],
        ),
        proteina: deserializeParam(
          data['proteina'],
          ParamType.double,
          false,
        ),
        grasa: deserializeParam(
          data['grasa'],
          ParamType.double,
          false,
        ),
        calorias: deserializeParam(
          data['calorias'],
          ParamType.double,
          false,
        ),
        azucar: deserializeParam(
          data['azucar'],
          ParamType.double,
          false,
        ),
        recepieName: deserializeParam<String>(
          data['recepieName'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'RecetasStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecetasStruct &&
        listEquality.equals(instructions, other.instructions) &&
        listEquality.equals(ingredients, other.ingredients) &&
        timerequired == other.timerequired &&
        listEquality.equals(titulo, other.titulo) &&
        video == other.video &&
        carbohydratos == other.carbohydratos &&
        fibra == other.fibra &&
        actualizacion == other.actualizacion &&
        proteina == other.proteina &&
        grasa == other.grasa &&
        calorias == other.calorias &&
        azucar == other.azucar &&
        listEquality.equals(recepieName, other.recepieName);
  }

  @override
  int get hashCode => const ListEquality().hash([
        instructions,
        ingredients,
        timerequired,
        titulo,
        video,
        carbohydratos,
        fibra,
        actualizacion,
        proteina,
        grasa,
        calorias,
        azucar,
        recepieName
      ]);
}

RecetasStruct createRecetasStruct({
  DateTime? timerequired,
  String? video,
  double? carbohydratos,
  double? fibra,
  DocumentReference? actualizacion,
  double? proteina,
  double? grasa,
  double? calorias,
  double? azucar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecetasStruct(
      timerequired: timerequired,
      video: video,
      carbohydratos: carbohydratos,
      fibra: fibra,
      actualizacion: actualizacion,
      proteina: proteina,
      grasa: grasa,
      calorias: calorias,
      azucar: azucar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecetasStruct? updateRecetasStruct(
  RecetasStruct? recetas, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recetas
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecetasStructData(
  Map<String, dynamic> firestoreData,
  RecetasStruct? recetas,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recetas == null) {
    return;
  }
  if (recetas.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recetas.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recetasData = getRecetasFirestoreData(recetas, forFieldValue);
  final nestedData = recetasData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recetas.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecetasFirestoreData(
  RecetasStruct? recetas, [
  bool forFieldValue = false,
]) {
  if (recetas == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recetas.toMap());

  // Add any Firestore field values
  recetas.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecetasListFirestoreData(
  List<RecetasStruct>? recetass,
) =>
    recetass?.map((e) => getRecetasFirestoreData(e, true)).toList() ?? [];
