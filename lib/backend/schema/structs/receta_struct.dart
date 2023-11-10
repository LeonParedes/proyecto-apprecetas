// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetaStruct extends FFFirebaseStruct {
  RecetaStruct({
    String? nombre,
    List<String>? instructions,
    String? imagen,
    List<String>? ingredientes,
    String? timerequired,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _instructions = instructions,
        _imagen = imagen,
        _ingredientes = ingredientes,
        _timerequired = timerequired,
        super(firestoreUtilData);

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;
  bool hasNombre() => _nombre != null;

  // "instructions" field.
  List<String>? _instructions;
  List<String> get instructions => _instructions ?? const [];
  set instructions(List<String>? val) => _instructions = val;
  void updateInstructions(Function(List<String>) updateFn) =>
      updateFn(_instructions ??= []);
  bool hasInstructions() => _instructions != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  set imagen(String? val) => _imagen = val;
  bool hasImagen() => _imagen != null;

  // "ingredientes" field.
  List<String>? _ingredientes;
  List<String> get ingredientes => _ingredientes ?? const [];
  set ingredientes(List<String>? val) => _ingredientes = val;
  void updateIngredientes(Function(List<String>) updateFn) =>
      updateFn(_ingredientes ??= []);
  bool hasIngredientes() => _ingredientes != null;

  // "timerequired" field.
  String? _timerequired;
  String get timerequired => _timerequired ?? '';
  set timerequired(String? val) => _timerequired = val;
  bool hasTimerequired() => _timerequired != null;

  static RecetaStruct fromMap(Map<String, dynamic> data) => RecetaStruct(
        nombre: data['Nombre'] as String?,
        instructions: getDataList(data['instructions']),
        imagen: data['imagen'] as String?,
        ingredientes: getDataList(data['ingredientes']),
        timerequired: data['timerequired'] as String?,
      );

  static RecetaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RecetaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Nombre': _nombre,
        'instructions': _instructions,
        'imagen': _imagen,
        'ingredientes': _ingredientes,
        'timerequired': _timerequired,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'instructions': serializeParam(
          _instructions,
          ParamType.String,
          true,
        ),
        'imagen': serializeParam(
          _imagen,
          ParamType.String,
        ),
        'ingredientes': serializeParam(
          _ingredientes,
          ParamType.String,
          true,
        ),
        'timerequired': serializeParam(
          _timerequired,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecetaStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecetaStruct(
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        instructions: deserializeParam<String>(
          data['instructions'],
          ParamType.String,
          true,
        ),
        imagen: deserializeParam(
          data['imagen'],
          ParamType.String,
          false,
        ),
        ingredientes: deserializeParam<String>(
          data['ingredientes'],
          ParamType.String,
          true,
        ),
        timerequired: deserializeParam(
          data['timerequired'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecetaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecetaStruct &&
        nombre == other.nombre &&
        listEquality.equals(instructions, other.instructions) &&
        imagen == other.imagen &&
        listEquality.equals(ingredientes, other.ingredientes) &&
        timerequired == other.timerequired;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombre, instructions, imagen, ingredientes, timerequired]);
}

RecetaStruct createRecetaStruct({
  String? nombre,
  String? imagen,
  String? timerequired,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecetaStruct(
      nombre: nombre,
      imagen: imagen,
      timerequired: timerequired,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecetaStruct? updateRecetaStruct(
  RecetaStruct? receta, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    receta
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecetaStructData(
  Map<String, dynamic> firestoreData,
  RecetaStruct? receta,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (receta == null) {
    return;
  }
  if (receta.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && receta.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recetaData = getRecetaFirestoreData(receta, forFieldValue);
  final nestedData = recetaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = receta.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecetaFirestoreData(
  RecetaStruct? receta, [
  bool forFieldValue = false,
]) {
  if (receta == null) {
    return {};
  }
  final firestoreData = mapToFirestore(receta.toMap());

  // Add any Firestore field values
  receta.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecetaListFirestoreData(
  List<RecetaStruct>? recetas,
) =>
    recetas?.map((e) => getRecetaFirestoreData(e, true)).toList() ?? [];
