import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/f_l_bar/option2/option2_widget.dart';
import '/f_l_bar/options/options_widget.dart';
import '/f_l_bar/upcoming_matches_copy/upcoming_matches_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/walkthroughs/f_l_walk_through.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'fl_model.dart';
export 'fl_model.dart';

class FlWidget extends StatefulWidget {
  const FlWidget({super.key});

  @override
  State<FlWidget> createState() => _FlWidgetState();
}

class _FlWidgetState extends State<FlWidget> {
  late FlModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'FL'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FL_PAGE_FL_ON_INIT_STATE');
      logFirebaseEvent('FL_update_app_state');
      FFAppState().userRole = valueOrDefault(currentUserDocument?.isFaculty, 0);
      FFAppState().facultyTeam =
          valueOrDefault(currentUserDocument?.facultyTeam, '');
      FFAppState().schoolName = valueOrDefault<String>(
        valueOrDefault(currentUserDocument?.userSchool, ''),
        'NA',
      );
      FFAppState().gmailVerified =
          valueOrDefault<bool>(currentUserDocument?.gmailVerified, false);
      FFAppState().update(() {});
    });

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
        title: 'FL',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).accent1,
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '42t686ux' /* Founders League */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  letterSpacing: 0.0,
                                ),
                      ).addWalkthrough(
                        textCfpozlyl,
                        _model.fLWalkThroughController,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 0.0, 0.0),
                          child: Text(
                            '${FFAppState().schoolName} Matches',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                      AuthUserStreamWidget(
                        builder: (context) => StreamBuilder<List<EventsRecord>>(
                          stream: queryEventsRecord(
                            queryBuilder: (eventsRecord) => eventsRecord
                                .where(
                                  'schoolName',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.userSchool, ''),
                                )
                                .where(
                                  'Time',
                                  isGreaterThan: getCurrentTimestamp,
                                )
                                .orderBy('Time', descending: true),
                            limit: 2,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LinearProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
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
                                return FutureBuilder<int>(
                                  future: queryCommentsSchedulesRecordCount(
                                    queryBuilder: (commentsSchedulesRecord) =>
                                        commentsSchedulesRecord.where(
                                      'pageDocRef',
                                      isEqualTo: listViewEventsRecord.docRef,
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    int upcomingMatchesCopyCount =
                                        snapshot.data!;

                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'FL_PAGE_Container_h7zi9euo_ON_TAP');
                                        logFirebaseEvent(
                                            'UpcomingMatchesCopy_navigate_to');

                                        context.pushNamed(
                                          'MatchPreview',
                                          queryParameters: {
                                            'schoolOne': serializeParam(
                                              FFAppState().schoolName,
                                              ParamType.String,
                                            ),
                                            'schoolTwo': serializeParam(
                                              listViewEventsRecord.opponent,
                                              ParamType.String,
                                            ),
                                            'date': serializeParam(
                                              listViewEventsRecord.date,
                                              ParamType.String,
                                            ),
                                            'time': serializeParam(
                                              listViewEventsRecord.time,
                                              ParamType.DateTime,
                                            ),
                                            'location': serializeParam(
                                              listViewEventsRecord.location,
                                              ParamType.String,
                                            ),
                                            'schoolColor1': serializeParam(
                                              () {
                                                if (FFAppState().schoolName ==
                                                    'Avon Old Farms School') {
                                                  return const Color(0xFF800000);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Choate Rosemary Hall') {
                                                  return const Color(0xFFFFD700);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'The Taft School') {
                                                  return const Color(0xFF00356B);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'The Ehtel Walker School') {
                                                  return const Color(0xFF800080);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'The Hotchkiss School') {
                                                  return const Color(0xFF00356B);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Kent School') {
                                                  return const Color(0xFF0000FF);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Kingswood Oxford School') {
                                                  return const Color(0xFFDC143C);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Loomis Chaffee School') {
                                                  return const Color(0xFF800000);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Miss Porter\'s School') {
                                                  return const Color(0xFF008000);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Westminster School') {
                                                  return const Color(0xFFFFD700);
                                                } else if (FFAppState()
                                                        .schoolName ==
                                                    'Trinity-Pawling School') {
                                                  return const Color(0xFF0000FF);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              ParamType.Color,
                                            ),
                                            'schoolColor2': serializeParam(
                                              () {
                                                if (listViewEventsRecord
                                                        .opponent ==
                                                    'Avon Old Farms School') {
                                                  return const Color(0xFF800000);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Choate Rosemary Hall') {
                                                  return const Color(0xFFFFD700);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'The Taft School') {
                                                  return const Color(0xFF00356B);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'The Ethel Walker School') {
                                                  return const Color(0xFF800080);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'The Hotchkiss School') {
                                                  return const Color(0xFF00356B);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Kent School') {
                                                  return const Color(0xFF0000FF);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Kingswood Oxford School') {
                                                  return const Color(0xFFDC143C);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Loomis Chaffee School') {
                                                  return const Color(0xFF800000);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Miss Porter\'s School') {
                                                  return const Color(0xFF008000);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Westminster School') {
                                                  return const Color(0xFFFFD700);
                                                } else if (listViewEventsRecord
                                                        .opponent ==
                                                    'Trinity-Pawling School') {
                                                  return const Color(0xFF0000FF);
                                                } else {
                                                  return const Color(0x00000000);
                                                }
                                              }(),
                                              ParamType.Color,
                                            ),
                                            'sportsType': serializeParam(
                                              listViewEventsRecord.sportsType,
                                              ParamType.String,
                                            ),
                                            'commentNumber': serializeParam(
                                              upcomingMatchesCopyCount,
                                              ParamType.int,
                                            ),
                                            'docRef': serializeParam(
                                              listViewEventsRecord.docRef,
                                              ParamType.String,
                                            ),
                                            'dateForComment': serializeParam(
                                              listViewEventsRecord.time
                                                  ?.toString(),
                                              ParamType.String,
                                            ),
                                            'teamId': serializeParam(
                                              '1125',
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );

                                        logFirebaseEvent(
                                            'UpcomingMatchesCopy_haptic_feedback');
                                        HapticFeedback.lightImpact();
                                      },
                                      child: UpcomingMatchesCopyWidget(
                                        key: Key(
                                            'Keyh7z_${listViewIndex}_of_${listViewEventsRecordList.length}'),
                                        sportsName: valueOrDefault<String>(
                                          listViewEventsRecord.sportsType,
                                          'Lacrosse',
                                        ),
                                        schoolLogo: valueOrDefault<String>(
                                          () {
                                            if (listViewEventsRecord.opponent ==
                                                'Avon Old Farms School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Choate Rosemary Hall') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'The Ethel Walker School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'The Hotchkiss School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Kent School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Kingswood Oxford School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Loomis Chaffee School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Miss Porter\'s School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'The Taft School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Trinity-Pawling School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                            } else if (listViewEventsRecord
                                                    .opponent ==
                                                'Westminster School') {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                            } else {
                                              return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                            }
                                          }(),
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                        ),
                                        date: valueOrDefault<String>(
                                          listViewEventsRecord.date,
                                          'NA',
                                        ),
                                        time: valueOrDefault<String>(
                                          dateTimeFormat(
                                            "jm",
                                            listViewEventsRecord.time,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
                                          'NA',
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ).addWalkthrough(
                              listViewTlkzsxgl,
                              _model.fLWalkThroughController,
                            );
                          },
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: ListView(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            20.0,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            wrapWithModel(
                              model: _model.optionsModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const OptionsWidget(
                                optionIcon: Icon(
                                  Icons.sports_rugby,
                                ),
                                optionName: 'Fixtures',
                                optionExplnanation:
                                    'Tap to View Upcoming Matches.',
                              ),
                            ),
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'FL_PAGE_Container_7b9p5cet_ON_TAP');
                                logFirebaseEvent('Options_navigate_to');

                                context.pushNamed('Results');
                              },
                              child: wrapWithModel(
                                model: _model.optionsModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: const OptionsWidget(
                                  optionIcon: Icon(
                                    Icons.rule,
                                    size: 23.0,
                                  ),
                                  optionName: 'Results',
                                  optionExplnanation:
                                      'Tap to View Game Results.',
                                ),
                              ),
                            ),
                            wrapWithModel(
                              model: _model.optionsModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const OptionsWidget(
                                optionIcon: Icon(
                                  Icons.query_stats,
                                ),
                                optionName: '2024-2025 Season Stats',
                                optionExplnanation: 'Tap to View Season Stats.',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.optionsModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: const OptionsWidget(
                                optionIcon: Icon(
                                  Icons.sports,
                                ),
                                optionName: 'Athletic Teams',
                                optionExplnanation:
                                    'Tap to View Athletic Teams.',
                              ),
                            ),
                          ],
                        ).addWalkthrough(
                          listViewJoh9o3eh,
                          _model.fLWalkThroughController,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 10.0, 0.0, 10.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '5kapljds' /* Read & Watch */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'FL_PAGE_Container_02fdd6cr_ON_TAP');
                                      logFirebaseEvent('Option2_navigate_to');

                                      context.pushNamed('ArticleLists');
                                    },
                                    child: wrapWithModel(
                                      model: _model.option2Model1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const Option2Widget(
                                        optionName: 'News',
                                        optionIcon: Icon(
                                          Icons.newspaper_sharp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.option2Model2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const Option2Widget(
                                      optionName: 'Videos',
                                      optionIcon: Icon(
                                        Icons.videocam_sharp,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'FL_PAGE_Container_yz8nnn4q_ON_TAP');
                                      logFirebaseEvent('Option2_navigate_to');

                                      context.pushNamed('LivestreamLists');
                                    },
                                    child: wrapWithModel(
                                      model: _model.option2Model3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const Option2Widget(
                                        optionName: 'Watch Live',
                                        optionIcon: Icon(
                                          Icons.live_tv,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -0.14),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'o216pkm3' /* About the Founders League */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              ListView(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'FL_PAGE_Container_fzw2nwmq_ON_TAP');
                                      logFirebaseEvent('Option2_navigate_to');

                                      context.pushNamed('schoolList');
                                    },
                                    child: wrapWithModel(
                                      model: _model.option2Model4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const Option2Widget(
                                        optionName: 'Schools',
                                        optionIcon: Icon(
                                          Icons.school,
                                        ),
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.option2Model5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const Option2Widget(
                                      optionName: 'History',
                                      optionIcon: Icon(
                                        Icons.history_edu,
                                      ),
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.option2Model6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: const Option2Widget(
                                      optionName: 'Awards ',
                                      optionIcon: FaIcon(
                                        FontAwesomeIcons.award,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'FL_PAGE_Container_ul50at98_ON_TAP');
                                      logFirebaseEvent('Option2_launch_u_r_l');
                                      await launchURL(
                                          'https://foundersleagueapp.org/');
                                    },
                                    child: wrapWithModel(
                                      model: _model.option2Model7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: const Option2Widget(
                                        optionName: 'Official Website',
                                        optionIcon: Icon(
                                          Icons.web,
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 5.0)),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 1.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 10.0, 0.0, 10.0),
                                        child: Container(
                                          width: 80.0,
                                          height: 80.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x00FFFFFF),
                                            image: DecorationImage(
                                              fit: BoxFit.contain,
                                              image: CachedNetworkImageProvider(
                                                valueOrDefault<String>(
                                                  () {
                                                    if (FFAppState()
                                                            .schoolName ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Westminster School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    }
                                                  }(),
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 15.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFAppState().schoolName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'FL_PAGE_OPEN_WEBPAGE_BTN_ON_TAP');
                                                    logFirebaseEvent(
                                                        'Button_haptic_feedback');
                                                    HapticFeedback
                                                        .lightImpact();
                                                    if (FFAppState()
                                                            .schoolName ==
                                                        'Avon Old Farms School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.avonoldfarms.com/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Choate Rosemary Hall') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.choate.edu/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Ethel Walker School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.ethelwalker.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Hotchkiss School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.hotchkiss.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Kent School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.kent-school.edu/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Kingswood Oxford School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.kingswoodoxford.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Loomis Chaffee School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.loomischaffee.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Miss Porter\'s School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.porters.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'The Taft School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.taftschool.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Trinity-Pawling School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.trinitypawling.org/');
                                                    } else if (FFAppState()
                                                            .schoolName ==
                                                        'Westminster School') {
                                                      logFirebaseEvent(
                                                          'Button_launch_u_r_l');
                                                      await launchURL(
                                                          'https://www.westminster-school.org/');
                                                    }
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '0onnqlhz' /* Open Webpage */,
                                                  ),
                                                  icon: const Icon(
                                                    Icons.arrow_outward,
                                                    size: 15.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 170.0,
                                                    height: 40.0,
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: const BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 15.0)),
                                          ),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 20.0)),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 10.0)),
                          ).addWalkthrough(
                            columnAkix9lyp,
                            _model.fLWalkThroughController,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.fLWalkThroughController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
