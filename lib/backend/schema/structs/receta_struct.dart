// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecetaStruct extends FFFirebaseStruct {
  RecetaStruct({
    String? nombre,
    int? id,
    String? foto,
    String? moto,
    List<RecetaStruct>? instrucciones,
    List<String>? nutrientes,
    DateTime? fechaconsulta,
    bool? reciente,
    List<RecetaStruct>? parametros,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _id = id,
        _foto = foto,
        _moto = moto,
        _instrucciones = instrucciones,
        _nutrientes = nutrientes,
        _fechaconsulta = fechaconsulta,
        _reciente = reciente,
        _parametros = parametros,
        super(firestoreUtilData);

  // "Nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;
  bool hasNombre() => _nombre != null;

  // "ID" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;
  bool hasFoto() => _foto != null;

  // "moto" field.
  String? _moto;
  String get moto => _moto ?? '';
  set moto(String? val) => _moto = val;
  bool hasMoto() => _moto != null;

  // "Instrucciones" field.
  List<RecetaStruct>? _instrucciones;
  List<RecetaStruct> get instrucciones => _instrucciones ?? const [];
  set instrucciones(List<RecetaStruct>? val) => _instrucciones = val;
  void updateInstrucciones(Function(List<RecetaStruct>) updateFn) =>
      updateFn(_instrucciones ??= []);
  bool hasInstrucciones() => _instrucciones != null;

  // "Nutrientes" field.
  List<String>? _nutrientes;
  List<String> get nutrientes => _nutrientes ?? const [];
  set nutrientes(List<String>? val) => _nutrientes = val;
  void updateNutrientes(Function(List<String>) updateFn) =>
      updateFn(_nutrientes ??= []);
  bool hasNutrientes() => _nutrientes != null;

  // "fechaconsulta" field.
  DateTime? _fechaconsulta;
  DateTime? get fechaconsulta => _fechaconsulta;
  set fechaconsulta(DateTime? val) => _fechaconsulta = val;
  bool hasFechaconsulta() => _fechaconsulta != null;

  // "reciente" field.
  bool? _reciente;
  bool get reciente => _reciente ?? false;
  set reciente(bool? val) => _reciente = val;
  bool hasReciente() => _reciente != null;

  // "parametros" field.
  List<RecetaStruct>? _parametros;
  List<RecetaStruct> get parametros => _parametros ?? const [];
  set parametros(List<RecetaStruct>? val) => _parametros = val;
  void updateParametros(Function(List<RecetaStruct>) updateFn) =>
      updateFn(_parametros ??= []);
  bool hasParametros() => _parametros != null;

  static RecetaStruct fromMap(Map<String, dynamic> data) => RecetaStruct(
        nombre: data['Nombre'] as String?,
        id: castToType<int>(data['ID']),
        foto: data['Foto'] as String?,
        moto: data['moto'] as String?,
        instrucciones: getStructList(
          data['Instrucciones'],
          RecetaStruct.fromMap,
        ),
        nutrientes: getDataList(data['Nutrientes']),
        fechaconsulta: data['fechaconsulta'] as DateTime?,
        reciente: data['reciente'] as bool?,
        parametros: getStructList(
          data['parametros'],
          RecetaStruct.fromMap,
        ),
      );

  static RecetaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? RecetaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Nombre': _nombre,
        'ID': _id,
        'Foto': _foto,
        'moto': _moto,
        'Instrucciones': _instrucciones?.map((e) => e.toMap()).toList(),
        'Nutrientes': _nutrientes,
        'fechaconsulta': _fechaconsulta,
        'reciente': _reciente,
        'parametros': _parametros?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'ID': serializeParam(
          _id,
          ParamType.int,
        ),
        'Foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'moto': serializeParam(
          _moto,
          ParamType.String,
        ),
        'Instrucciones': serializeParam(
          _instrucciones,
          ParamType.DataStruct,
          true,
        ),
        'Nutrientes': serializeParam(
          _nutrientes,
          ParamType.String,
          true,
        ),
        'fechaconsulta': serializeParam(
          _fechaconsulta,
          ParamType.DateTime,
        ),
        'reciente': serializeParam(
          _reciente,
          ParamType.bool,
        ),
        'parametros': serializeParam(
          _parametros,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static RecetaStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecetaStruct(
        nombre: deserializeParam(
          data['Nombre'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['ID'],
          ParamType.int,
          false,
        ),
        foto: deserializeParam(
          data['Foto'],
          ParamType.String,
          false,
        ),
        moto: deserializeParam(
          data['moto'],
          ParamType.String,
          false,
        ),
        instrucciones: deserializeStructParam<RecetaStruct>(
          data['Instrucciones'],
          ParamType.DataStruct,
          true,
          structBuilder: RecetaStruct.fromSerializableMap,
        ),
        nutrientes: deserializeParam<String>(
          data['Nutrientes'],
          ParamType.String,
          true,
        ),
        fechaconsulta: deserializeParam(
          data['fechaconsulta'],
          ParamType.DateTime,
          false,
        ),
        reciente: deserializeParam(
          data['reciente'],
          ParamType.bool,
          false,
        ),
        parametros: deserializeStructParam<RecetaStruct>(
          data['parametros'],
          ParamType.DataStruct,
          true,
          structBuilder: RecetaStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RecetaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecetaStruct &&
        nombre == other.nombre &&
        id == other.id &&
        foto == other.foto &&
        moto == other.moto &&
        listEquality.equals(instrucciones, other.instrucciones) &&
        listEquality.equals(nutrientes, other.nutrientes) &&
        fechaconsulta == other.fechaconsulta &&
        reciente == other.reciente &&
        listEquality.equals(parametros, other.parametros);
  }

  @override
  int get hashCode => const ListEquality().hash([
        nombre,
        id,
        foto,
        moto,
        instrucciones,
        nutrientes,
        fechaconsulta,
        reciente,
        parametros
      ]);
}

RecetaStruct createRecetaStruct({
  String? nombre,
  int? id,
  String? foto,
  String? moto,
  DateTime? fechaconsulta,
  bool? reciente,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecetaStruct(
      nombre: nombre,
      id: id,
      foto: foto,
      moto: moto,
      fechaconsulta: fechaconsulta,
      reciente: reciente,
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
