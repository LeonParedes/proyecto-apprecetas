import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'receta_model.dart';
export 'receta_model.dart';

class RecetaWidget extends StatefulWidget {
  const RecetaWidget({super.key});

  @override
  _RecetaWidgetState createState() => _RecetaWidgetState();
}

class _RecetaWidgetState extends State<RecetaWidget> {
  late RecetaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecetaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFFB4F9EA),
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(0.00, 0.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                buttonSize: MediaQuery.sizeOf(context).width * 0.1,
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ),
          ),
          title: Align(
            alignment: const AlignmentDirectional(0.00, 1.00),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
              child: AutoSizeText(
                FFLocalizations.of(context).getText(
                  'o491e0fx' /* ReceBuddy */,
                ),
                style: FlutterFlowTheme.of(context).headlineLarge,
                minFontSize: 16.0,
              ),
            ),
          ),
          actions: [
            Align(
              alignment: const AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 50.0,
                  borderWidth: 1.0,
                  buttonSize: MediaQuery.sizeOf(context).width * 0.1,
                  fillColor: const Color(0xFFC4C4C4),
                  icon: Icon(
                    Icons.other_houses_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Home');
                  },
                ),
              ),
            ),
          ],
          centerTitle: true,
          toolbarHeight: 100.0,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.00, -1.00),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'lr6kvm9a' /* Receta para:  */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 20.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '08tjdy4a' /* Takoyaki Japones */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Nunito',
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w800,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 10.0, 20.0, 10.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '9qc9h4kw' /* Tiempo de preparacion:  25 min... */,
                          ),
                          style: GoogleFonts.getFont(
                            'Nunito',
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 20.0, 10.0),
                    child: Container(
                      width: 380.0,
                      height: 618.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: '',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'jrv0urxm' /* Lo primero que tendrás que hac... */,
                                  ),
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'ha3nehra' /* Para el siguiente paso necesit... */,
                                  ),
                                  style: const TextStyle(),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'yvc1p3vq' /* A la mezcla se le añade benish... */,
                                  ),
                                  style: const TextStyle(),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'b7t67hp0' /* Ahora debes comenzar a calenta... */,
                                  ),
                                  style: const TextStyle(),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'crp7u5sz' /* Cuando esté bien caliente se a... */,
                                  ),
                                  style: const TextStyle(),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'ed8ihwp0' /* Después de unos minutos se ver... */,
                                  ),
                                  style: const TextStyle(),
                                ),
                                TextSpan(
                                  text: FFLocalizations.of(context).getText(
                                    'u8xqlmcy' /* Cuando estén listos por ambos ... */,
                                  ),
                                  style: const TextStyle(),
                                )
                              ],
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('Receta');
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'zmm71jlf' /* Receta */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFF0FBD97),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.white,
                                                  ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.00, 0.00),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('Nutrientes');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        '9c92sur3' /* Nutrientes */,
                                      ),
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0xFF0FBD97),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.white,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
