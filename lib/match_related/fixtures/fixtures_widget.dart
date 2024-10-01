import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/match_related/match_fixtures/match_fixtures_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'fixtures_model.dart';
export 'fixtures_model.dart';

class FixturesWidget extends StatefulWidget {
  const FixturesWidget({super.key});

  @override
  State<FixturesWidget> createState() => _FixturesWidgetState();
}

class _FixturesWidgetState extends State<FixturesWidget> {
  late FixturesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FixturesModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Fixtures'});
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
        title: 'Fixtures',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 45.0,
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'FIXTURES_PAGE_chevron_left_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_navigate_back');
                          context.pop();
                        },
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'i4a8sqaw' /* Fixtures */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Colors.white,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'FIXTURES_PAGE_Icon_ocfe4czs_ON_TAP');
                          logFirebaseEvent('Icon_navigate_to');

                          context.pushNamed('NotificationSettings');
                        },
                        child: Icon(
                          Icons.notifications,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowDropDown<String>(
                          controller: _model.dropDownFallValueController1 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'xlp3l6ij' /* Fall */,
                            ),
                            FFLocalizations.of(context).getText(
                              'x8rzv0kg' /* Winter */,
                            ),
                            FFLocalizations.of(context).getText(
                              'kdf4e9e4' /* Spring */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.dropDownFallValue1 = val),
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: 55.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            '7nsb9twa' /* Select a Season... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).accent1,
                          borderWidth: 1.0,
                          borderRadius: 30.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                          labelText: '',
                          labelTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        FlutterFlowDropDown<String>(
                          controller: _model.dropDownFallValueController2 ??=
                              FormFieldController<String>(null),
                          options: [
                            FFLocalizations.of(context).getText(
                              'rst3b0ao' /* Football */,
                            ),
                            FFLocalizations.of(context).getText(
                              'vl1nvk9j' /* Soccer */,
                            ),
                            FFLocalizations.of(context).getText(
                              'xli8dhzt' /* Cross Country */,
                            ),
                            FFLocalizations.of(context).getText(
                              'h2hkem3d' /* Hockey */,
                            ),
                            FFLocalizations.of(context).getText(
                              'mtep7as1' /* Basketball */,
                            ),
                            FFLocalizations.of(context).getText(
                              'k9er8cf4' /* Squash */,
                            ),
                            FFLocalizations.of(context).getText(
                              'bxog58im' /* Swimming */,
                            ),
                            FFLocalizations.of(context).getText(
                              'vmviyvyx' /* Wrestling */,
                            ),
                            FFLocalizations.of(context).getText(
                              'lz6rh06o' /* Baseball */,
                            ),
                            FFLocalizations.of(context).getText(
                              'ha8ae6us' /* Golf */,
                            ),
                            FFLocalizations.of(context).getText(
                              'z3n58zbv' /* Lacrosse */,
                            ),
                            FFLocalizations.of(context).getText(
                              '2h1ypyt3' /* Tennis */,
                            )
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.dropDownFallValue2 = val),
                          width: MediaQuery.sizeOf(context).width * 0.45,
                          height: 55.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          hintText: FFLocalizations.of(context).getText(
                            'cpw9q9si' /* Select a Sport... */,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).accent1,
                          borderWidth: 1.0,
                          borderRadius: 30.0,
                          margin: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 4.0, 16.0, 4.0),
                          hidesUnderline: true,
                          isOverButton: true,
                          isSearchable: false,
                          isMultiSelect: false,
                          labelText: '',
                          labelTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(const SizedBox(width: 10.0)),
                    ),
                  ),
                  StreamBuilder<List<EventsRecord>>(
                    stream: queryEventsRecord(
                      queryBuilder: (eventsRecord) => eventsRecord
                          .where(
                            'schoolName',
                            isEqualTo: FFAppState().schoolName,
                          )
                          .where(
                            'sportsName',
                            isEqualTo: _model.dropDownFallValue2,
                          )
                          .orderBy('date'),
                      limit: 10,
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
                          return SizedBox(
                            height: 162.0,
                            child: StreamBuilder<List<CommentsSchedulesRecord>>(
                              stream: queryCommentsSchedulesRecord(
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
                                List<CommentsSchedulesRecord>
                                    matchFixturesCommentsSchedulesRecordList =
                                    snapshot.data!;

                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'FIXTURES_PAGE_Container_kk5fkt2v_ON_TAP');
                                    logFirebaseEvent(
                                        'MatchFixtures_haptic_feedback');
                                    HapticFeedback.lightImpact();
                                    logFirebaseEvent(
                                        'MatchFixtures_navigate_to');

                                    context.pushNamed(
                                      'MatchPreview',
                                      queryParameters: {
                                        'schoolOne': serializeParam(
                                          listViewEventsRecord.schoolName,
                                          ParamType.String,
                                        ),
                                        'schoolTwo': serializeParam(
                                          listViewEventsRecord.opponent,
                                          ParamType.String,
                                        ),
                                        'date': serializeParam(
                                          dateTimeFormat(
                                            "MEd",
                                            listViewEventsRecord.time,
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          ),
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
                                            if (listViewEventsRecord
                                                    .schoolName ==
                                                'Avon Old Farms School') {
                                              return const Color(0xFF800000);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Choate Rosemary Hall') {
                                              return const Color(0xFFFFD700);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'The Taft School') {
                                              return const Color(0xFF00356B);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'The Ehtel Walker School') {
                                              return const Color(0xFF800080);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'The Hotchkiss School') {
                                              return const Color(0xFF00356B);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Kent School') {
                                              return const Color(0xFF0000FF);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Kingswood Oxford School') {
                                              return const Color(0xFFDC143C);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Loomis Chaffee School') {
                                              return const Color(0xFF800000);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Miss Porter\'s School') {
                                              return const Color(0xFF008000);
                                            } else if (listViewEventsRecord
                                                    .schoolName ==
                                                'Westminster School') {
                                              return const Color(0xFFFFD700);
                                            } else if (listViewEventsRecord
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
                                            if (listViewEventsRecord.opponent ==
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
                                          matchFixturesCommentsSchedulesRecordList
                                              .length,
                                          ParamType.int,
                                        ),
                                        'docRef': serializeParam(
                                          listViewEventsRecord.docRef,
                                          ParamType.String,
                                        ),
                                        'dateForComment': serializeParam(
                                          listViewEventsRecord.time?.toString(),
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: MatchFixturesWidget(
                                    key: Key(
                                        'Keykk5_${listViewIndex}_of_${listViewEventsRecordList.length}'),
                                    sportsName: listViewEventsRecord.sportsType,
                                    schoolImage1: valueOrDefault<String>(
                                      () {
                                        if (listViewEventsRecord.schoolName ==
                                            'Avon Old Farms School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Choate Rosemary Hall') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'The Ethel Walker School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'The Hotchkiss School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Kent School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Kingswood Oxford School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Loomis Chaffee School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Miss Porter\'s School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'The Taft School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Trinity-Pawling School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                        } else if (listViewEventsRecord
                                                .schoolName ==
                                            'Westminster School') {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                        } else {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                        }
                                      }(),
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                    ),
                                    schoolImage2: valueOrDefault<String>(
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
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                        } else {
                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                        }
                                      }(),
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG',
                                    ),
                                    time: listViewEventsRecord.time!,
                                  ),
                                );
                              },
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
        ));
  }
}
