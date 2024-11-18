import '/admin_components/admin_match_score_update/admin_match_score_update_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'admin_update_score_model.dart';
export 'admin_update_score_model.dart';

class AdminUpdateScoreWidget extends StatefulWidget {
  const AdminUpdateScoreWidget({super.key});

  @override
  State<AdminUpdateScoreWidget> createState() => _AdminUpdateScoreWidgetState();
}

class _AdminUpdateScoreWidgetState extends State<AdminUpdateScoreWidget> {
  late AdminUpdateScoreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUpdateScoreModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminUpdateScore'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'AdminUpdateScore',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).alternate,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).alternate,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 35.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ADMIN_UPDATE_SCORE_chevron_left_ICN_ON_T');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'woijh09z' /* Update Game Score */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    StreamBuilder<List<EventsRecord>>(
                      stream: queryEventsRecord(
                        queryBuilder: (eventsRecord) => eventsRecord.where(
                          'sportsType',
                          isEqualTo: FFAppState().facultyTeam,
                        ),
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitThreeBounce(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<EventsRecord> listViewEventsRecordList =
                            snapshot.data!;

                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewEventsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewEventsRecord =
                                listViewEventsRecordList[listViewIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADMIN_UPDATE_SCORE_Container_ibixd5jb_ON');
                                logFirebaseEvent(
                                    'AdminMatchScoreUpdate_navigate_to');

                                context.pushNamed(
                                  'AdminUpdateScore2',
                                  queryParameters: {
                                    'schoolName': serializeParam(
                                      listViewEventsRecord.opponent,
                                      ParamType.String,
                                    ),
                                    'schoolImage': serializeParam(
                                      valueOrDefault<String>(
                                        () {
                                          if (listViewEventsRecord.opponent ==
                                              'Avon Old Farms School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ek5iv7p043nq/Avon_Old_Farms_School_Profile_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Choate Rosemary Hall') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/oir3goef6dg9/Choate_Rosemary_Hall_Profile_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'The Ethel Walker School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3dg1bm7zzs26/The_Ethel_Walker_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'The Hotchkiss School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6glxp1vk1bfi/The_Hotchkiss_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Kent School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/zd3at73gnq1k/Kent_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Kingswood Oxford School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1j52knsaohjk/Kingswood_Oxford_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Loomis Chaffee School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/p2oui6ebg9dg/Loomis_Chaffee_School_Image.webp';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Miss Porter\'s School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rmktv6hxx0ez/Miss_Porters_School_Image_.jpeg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'The Taft School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/od8zhb7bo0l5/The_Taft_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Trinity-Pawling School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/u34xrnva2dno/Trinity-Pawling_School_Image.jpg';
                                          } else if (listViewEventsRecord
                                                  .opponent ==
                                              'Westminster School') {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/yr5gxyqcpuge/Westminster_School_Image_.jpg';
                                          } else {
                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ek5iv7p043nq/Avon_Old_Farms_School_Profile_Image.jpg';
                                          }
                                        }(),
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ek5iv7p043nq/Avon_Old_Farms_School_Profile_Image.jpg',
                                      ),
                                      ParamType.String,
                                    ),
                                    'docRef': serializeParam(
                                      listViewEventsRecord.reference.id,
                                      ParamType.String,
                                    ),
                                    'matchDate': serializeParam(
                                      listViewEventsRecord.date,
                                      ParamType.String,
                                    ),
                                    'matchLocation': serializeParam(
                                      listViewEventsRecord.location,
                                      ParamType.String,
                                    ),
                                    'matchDateforID': serializeParam(
                                      listViewEventsRecord.time?.toString(),
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );

                                logFirebaseEvent(
                                    'AdminMatchScoreUpdate_haptic_feedback');
                                HapticFeedback.lightImpact();
                              },
                              child: AdminMatchScoreUpdateWidget(
                                key: Key(
                                    'Keyibi_${listViewIndex}_of_${listViewEventsRecordList.length}'),
                                matchDate: valueOrDefault<String>(
                                  listViewEventsRecord.date,
                                  'Mon, 7/1',
                                ),
                                matchOpponent: listViewEventsRecord.opponent,
                                opponentImage: valueOrDefault<String>(
                                  () {
                                    if (listViewEventsRecord.opponent ==
                                        'Avon Old Farms School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Choate Rosemary Hall') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'The Ethel Walker School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'The Hotchkiss School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Kent School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Kingswood Oxford School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Loomis Chaffee School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Miss Porter\'s School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'The Taft School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Trinity-Pawling School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                    } else if (listViewEventsRecord.opponent ==
                                        'Westminster School') {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                    } else {
                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                    }
                                  }(),
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
