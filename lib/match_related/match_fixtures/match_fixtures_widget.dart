import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'match_fixtures_model.dart';
export 'match_fixtures_model.dart';

class MatchFixturesWidget extends StatefulWidget {
  const MatchFixturesWidget({
    super.key,
    required this.sportsName,
    required this.schoolImage1,
    required this.schoolImage2,
    required this.time,
  });

  final String? sportsName;
  final String? schoolImage1;
  final String? schoolImage2;
  final DateTime? time;

  @override
  State<MatchFixturesWidget> createState() => _MatchFixturesWidgetState();
}

class _MatchFixturesWidgetState extends State<MatchFixturesWidget> {
  late MatchFixturesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchFixturesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      primary: false,
      scrollDirection: Axis.vertical,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
          child: Material(
            color: Colors.transparent,
            elevation: 1.0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 10.0),
                  child: Text(
                    dateTimeFormat(
                      "MEd",
                      widget.time,
                      locale: FFLocalizations.of(context).languageCode,
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 23.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x2F1D2429),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).secondary,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.sportsName,
                      'NA',
                    ),
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Outfit',
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Stack(
                  alignment: const AlignmentDirectional(1.0, 0.0),
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).accent1,
                          size: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 200),
                                fadeOutDuration: const Duration(milliseconds: 200),
                                imageUrl: valueOrDefault<String>(
                                  widget.schoolImage1,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                ),
                                width: 45.0,
                                height: 40.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0),
                                    topRight: Radius.circular(10.0),
                                  ),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).success,
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                        "Hm",
                                        widget.time,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      'NA',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: const Duration(milliseconds: 200),
                                fadeOutDuration: const Duration(milliseconds: 200),
                                imageUrl: valueOrDefault<String>(
                                  widget.schoolImage2,
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png',
                                ),
                                width: 45.0,
                                height: 40.0,
                                fit: BoxFit.contain,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ].divide(const SizedBox(height: 5.0)),
    );
  }
}
