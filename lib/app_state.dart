import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _recetaspasos = prefs
              .getStringList('ff_recetaspasos')
              ?.map((path) => path.ref)
              .toList() ??
          _recetaspasos;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _recetaspasos = [];
  List<DocumentReference> get recetaspasos => _recetaspasos;
  set recetaspasos(List<DocumentReference> value) {
    _recetaspasos = value;
    prefs.setStringList('ff_recetaspasos', value.map((x) => x.path).toList());
  }

  void addToRecetaspasos(DocumentReference value) {
    _recetaspasos.add(value);
    prefs.setStringList(
        'ff_recetaspasos', _recetaspasos.map((x) => x.path).toList());
  }

  void removeFromRecetaspasos(DocumentReference value) {
    _recetaspasos.remove(value);
    prefs.setStringList(
        'ff_recetaspasos', _recetaspasos.map((x) => x.path).toList());
  }

  void removeAtIndexFromRecetaspasos(int index) {
    _recetaspasos.removeAt(index);
    prefs.setStringList(
        'ff_recetaspasos', _recetaspasos.map((x) => x.path).toList());
  }

  void updateRecetaspasosAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _recetaspasos[index] = updateFn(_recetaspasos[index]);
    prefs.setStringList(
        'ff_recetaspasos', _recetaspasos.map((x) => x.path).toList());
  }

  void insertAtIndexInRecetaspasos(int index, DocumentReference value) {
    _recetaspasos.insert(index, value);
    prefs.setStringList(
        'ff_recetaspasos', _recetaspasos.map((x) => x.path).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
