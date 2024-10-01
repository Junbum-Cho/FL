import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'match_result_final_model.dart';
export 'match_result_final_model.dart';

class MatchResultFinalWidget extends StatefulWidget {
  const MatchResultFinalWidget({
    super.key,
    required this.matchDate,
    int? schoolScore1,
    int? schoolScore2,
    required this.sportsType,
    required this.schoolOneImage,
    required this.schoolTwoImage,
  })  : schoolScore1 = schoolScore1 ?? 0,
        schoolScore2 = schoolScore2 ?? 0;

  final String? matchDate;
  final int schoolScore1;
  final int schoolScore2;
  final String? sportsType;
  final String? schoolOneImage;
  final String? schoolTwoImage;

  @override
  State<MatchResultFinalWidget> createState() => _MatchResultFinalWidgetState();
}

class _MatchResultFinalWidgetState extends State<MatchResultFinalWidget> {
  late MatchResultFinalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchResultFinalModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: ListView(
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
                width: 400.0,
                height: 55.0,
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
                        const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.matchDate,
                        'NA',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineLarge.override(
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
          Material(
            color: Colors.transparent,
            elevation: 1.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 1.0,
                    color: Color(0x2F1D2429),
                    offset: Offset(
                      0.0,
                      1.0,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).alternate,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.sportsType,
                          'NA',
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 200),
                              fadeOutDuration: const Duration(milliseconds: 200),
                              imageUrl: valueOrDefault<String>(
                                widget.schoolOneImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                              ),
                              width: 45.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 37.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.schoolScore1.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width: 37.0,
                                    height: 35.0,
                                    decoration: BoxDecoration(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          widget.schoolScore2.toString(),
                                          '0',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
                                widget.schoolTwoImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png',
                              ),
                              width: 45.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                              alignment: const Alignment(0.0, 0.0),
                            ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: const Color(0x00570846),
                          borderRadius: 7.0,
                          borderWidth: 1.0,
                          buttonSize: 30.0,
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          icon: Icon(
                            Icons.arrow_forward,
                            color: FlutterFlowTheme.of(context).accent1,
                            size: 15.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                      ].addToStart(const SizedBox(width: 20.0)),
                    ),
                  ].divide(const SizedBox(height: 5.0)),
                ),
              ),
            ),
          ),
        ].divide(const SizedBox(height: 5.0)),
      ),
    );
  }
}
