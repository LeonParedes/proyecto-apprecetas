import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'busca_widget.dart' show BuscaWidget;
import 'package:flutter/material.dart';

class BuscaModel extends FlutterFlowModel<BuscaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for textsearch widget.
  FocusNode? textsearchFocusNode;
  TextEditingController? textsearchController;
  String? Function(BuildContext, String?)? textsearchControllerValidator;
  // Stores action output result for [Backend Call - API (getrecetafull)] action in IconButton widget.
  ApiCallResponse? resultadoreceta;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textsearchFocusNode?.dispose();
    textsearchController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
