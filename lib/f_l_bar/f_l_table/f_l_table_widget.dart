import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'f_l_table_model.dart';
export 'f_l_table_model.dart';

class FLTableWidget extends StatefulWidget {
  const FLTableWidget({super.key});

  @override
  State<FLTableWidget> createState() => _FLTableWidgetState();
}

class _FLTableWidgetState extends State<FLTableWidget> {
  late FLTableModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FLTableModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    fadeInDuration: const Duration(milliseconds: 500),
                    fadeOutDuration: const Duration(milliseconds: 500),
                    imageUrl: valueOrDefault<String>(
                      () {
                        if (FFAppState().schoolName ==
                            'Avon Old Farms School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                        } else if (FFAppState().schoolName ==
                            'Choate Rosemary Hall') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                        } else if (FFAppState().schoolName ==
                            'The Ethel Walker School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                        } else if (FFAppState().schoolName ==
                            'The Hotchkiss School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                        } else if (FFAppState().schoolName == 'Kent School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                        } else if (FFAppState().schoolName ==
                            'Kingswood Oxford School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                        } else if (FFAppState().schoolName ==
                            'Loomis Chaffee School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                        } else if (FFAppState().schoolName ==
                            'Miss Porter\'s School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                        } else if (FFAppState().schoolName ==
                            'The Taft School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                        } else if (FFAppState().schoolName ==
                            'Trinity-Pawling School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                        } else if (FFAppState().schoolName ==
                            'Westminster School') {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                        } else {
                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                        }
                      }(),
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                    ),
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 8.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'dzzz32my' /* Tables */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderRadius: 8.0,
                                  borderWidth: 2.0,
                                  buttonSize: 35.0,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 8.0,
                          thickness: 3.0,
                          color: Color(0x4D092621),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'ahtzpw02' /* Tap to View Founders League Ta... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
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
    );
  }
}
