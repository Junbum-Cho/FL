import '/admin_components/admin_schedule2/admin_schedule2_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'admin_match_schedule_model.dart';
export 'admin_match_schedule_model.dart';

class AdminMatchScheduleWidget extends StatefulWidget {
  const AdminMatchScheduleWidget({
    super.key,
    required this.facultyTeam,
  });

  final String? facultyTeam;

  @override
  State<AdminMatchScheduleWidget> createState() =>
      _AdminMatchScheduleWidgetState();
}

class _AdminMatchScheduleWidgetState extends State<AdminMatchScheduleWidget>
    with TickerProviderStateMixin {
  late AdminMatchScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminMatchScheduleModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminMatchSchedule'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_MATCH_SCHEDULE_AdminMatchSchedule_');
      logFirebaseEvent('AdminMatchSchedule_firestore_query');
      _model.teamPlayersRefs = await queryUserRecordOnce(
        queryBuilder: (userRecord) => userRecord.where(
          'studentTeam',
          isEqualTo: widget.facultyTeam,
        ),
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'AdminMatchSchedule',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 50.0,
                borderWidth: 1.0,
                buttonSize: 30.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 35.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ADMIN_MATCH_SCHEDULE_chevron_left_ICN_ON');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  '60t912io' /* Schedule a Game */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: const Alignment(0.0, 0),
                        child: FlutterFlowButtonTabBar(
                          useToggleButtonStyle: true,
                          isScrollable: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          unselectedLabelStyle: const TextStyle(),
                          labelColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          backgroundColor: FlutterFlowTheme.of(context).accent1,
                          unselectedBackgroundColor:
                              FlutterFlowTheme.of(context).alternate,
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderWidth: 2.0,
                          borderRadius: 12.0,
                          elevation: 0.0,
                          labelPadding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          tabs: [
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'd91s2eal' /* Month */,
                              ),
                            ),
                            Tab(
                              text: FFLocalizations.of(context).getText(
                                'qymz4nii' /* Week */,
                              ),
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [() async {}, () async {}][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: FlutterFlowCalendar(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        weekFormat: false,
                                        weekStartsMonday: true,
                                        onChange: (DateTimeRange?
                                            newSelectedDate) async {
                                          if (_model.calendarSelectedDay1 ==
                                              newSelectedDate) {
                                            return;
                                          }
                                          _model.calendarSelectedDay1 =
                                              newSelectedDate;
                                          logFirebaseEvent(
                                              'ADMIN_MATCH_SCHEDULE_Calendar_rp20qvkr_O');
                                          logFirebaseEvent(
                                              'Calendar_haptic_feedback');
                                          HapticFeedback.lightImpact();
                                          if (getCurrentTimestamp >
                                              _model.calendarSelectedDay1!
                                                  .start) {
                                            logFirebaseEvent(
                                                'Calendar_alert_dialog');
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return WebViewAware(
                                                  child: AlertDialog(
                                                    title: const Text(
                                                        'Please selected a future date. '),
                                                    content: const Text(
                                                        'Match cannot be scheduled in the past. Please select today or another future date. Thank you! '),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Ok'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            logFirebaseEvent(
                                                'Calendar_navigate_to');

                                            context.pushNamed(
                                              'AddGame',
                                              queryParameters: {
                                                'facultyTeam': serializeParam(
                                                  widget.facultyTeam,
                                                  ParamType.String,
                                                ),
                                                'selectedDate': serializeParam(
                                                  dateTimeFormat(
                                                    "MEd",
                                                    _model.calendarSelectedDay1
                                                        ?.start,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'selectedDateForPicker':
                                                    serializeParam(
                                                  _model.calendarSelectedDay1
                                                      ?.start,
                                                  ParamType.DateTime,
                                                ),
                                                'teamPlayers': serializeParam(
                                                  _model.teamPlayers,
                                                  ParamType.DocumentReference,
                                                  isList: true,
                                                ),
                                                'selectedDateParamGoogle':
                                                    serializeParam(
                                                  _model.calendarSelectedDay1
                                                      ?.start,
                                                  ParamType.DateTime,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        titleStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                        dayOfWeekStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        dateStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        selectedDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        inactiveDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'jed5fxzl' /* Coming Up */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<EventsRecord>>(
                                              stream: queryEventsRecord(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord
                                                        .where(
                                                          'sportsType',
                                                          isEqualTo: widget
                                                              .facultyTeam,
                                                        )
                                                        .where(
                                                          'schoolName',
                                                          isEqualTo: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userSchool,
                                                              ''),
                                                        )
                                                        .where(
                                                          'date',
                                                          isGreaterThan:
                                                              getCurrentTimestamp
                                                                  .toString(),
                                                        )
                                                        .orderBy('date',
                                                            descending: true),
                                                limit: 3,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitThreeBounce(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<EventsRecord>
                                                    listViewEventsRecordList =
                                                    snapshot.data!;

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewEventsRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewEventsRecord =
                                                        listViewEventsRecordList[
                                                            listViewIndex];
                                                    return StreamBuilder<
                                                        List<EventsRecord>>(
                                                      stream: queryEventsRecord(
                                                        queryBuilder:
                                                            (eventsRecord) =>
                                                                eventsRecord
                                                                    .where(
                                                                      'sportsType',
                                                                      isEqualTo: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.facultyTeam,
                                                                          ''),
                                                                    )
                                                                    .where(
                                                                      'schoolName',
                                                                      isEqualTo: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.userSchool,
                                                                          ''),
                                                                    )
                                                                    .where(
                                                                      'date',
                                                                      isGreaterThan:
                                                                          getCurrentTimestamp
                                                                              .toString(),
                                                                    )
                                                                    .orderBy(
                                                                        'date',
                                                                        descending:
                                                                            true),
                                                        limit: 3,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitThreeBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EventsRecord>
                                                            adminSchedule2EventsRecordList =
                                                            snapshot.data!;

                                                        return AdminSchedule2Widget(
                                                          key: Key(
                                                              'Keyuus_${listViewIndex}_of_${listViewEventsRecordList.length}'),
                                                          title:
                                                              listViewEventsRecord
                                                                  .date,
                                                          time: dateTimeFormat(
                                                            "jm",
                                                            listViewEventsRecord
                                                                .time!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          date:
                                                              listViewEventsRecord
                                                                  .date,
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 100.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: Color(0x33000000),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      child: FlutterFlowCalendar(
                                        color: FlutterFlowTheme.of(context)
                                            .accent1,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        weekFormat: true,
                                        weekStartsMonday: true,
                                        onChange: (DateTimeRange?
                                            newSelectedDate) async {
                                          if (_model.calendarSelectedDay2 ==
                                              newSelectedDate) {
                                            return;
                                          }
                                          _model.calendarSelectedDay2 =
                                              newSelectedDate;
                                          logFirebaseEvent(
                                              'ADMIN_MATCH_SCHEDULE_Calendar_4j9zxjxj_O');
                                          logFirebaseEvent(
                                              'Calendar_haptic_feedback');
                                          HapticFeedback.lightImpact();
                                          if (getCurrentTimestamp >
                                              _model.calendarSelectedDay2!
                                                  .start) {
                                            logFirebaseEvent(
                                                'Calendar_alert_dialog');
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return WebViewAware(
                                                  child: AlertDialog(
                                                    title: const Text(
                                                        'Please selected a future date. '),
                                                    content: const Text(
                                                        'Match cannot be scheduled in the past. Please select today or another future date. Thank you! '),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                alertDialogContext),
                                                        child: const Text('Ok'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            logFirebaseEvent(
                                                'Calendar_navigate_to');

                                            context.pushNamed(
                                              'AddGame',
                                              queryParameters: {
                                                'facultyTeam': serializeParam(
                                                  widget.facultyTeam,
                                                  ParamType.String,
                                                ),
                                                'selectedDate': serializeParam(
                                                  dateTimeFormat(
                                                    "MEd",
                                                    _model.calendarSelectedDay1
                                                        ?.start,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  ParamType.String,
                                                ),
                                                'selectedDateForPicker':
                                                    serializeParam(
                                                  _model.calendarSelectedDay2
                                                      ?.start,
                                                  ParamType.DateTime,
                                                ),
                                                'teamPlayers': serializeParam(
                                                  _model.teamPlayers,
                                                  ParamType.DocumentReference,
                                                  isList: true,
                                                ),
                                                'selectedDateParamGoogle':
                                                    serializeParam(
                                                  getCurrentTimestamp,
                                                  ParamType.DateTime,
                                                ),
                                              }.withoutNulls,
                                            );
                                          }

                                          safeSetState(() {});
                                        },
                                        titleStyle: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              letterSpacing: 0.0,
                                            ),
                                        dayOfWeekStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        dateStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                        selectedDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        inactiveDateStyle:
                                            FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'w1k9ks9m' /* Coming Up */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<EventsRecord>>(
                                              stream: queryEventsRecord(
                                                queryBuilder: (eventsRecord) =>
                                                    eventsRecord
                                                        .where(
                                                          'sportsType',
                                                          isEqualTo: widget
                                                              .facultyTeam,
                                                        )
                                                        .where(
                                                          'schoolName',
                                                          isEqualTo: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.userSchool,
                                                              ''),
                                                        )
                                                        .where(
                                                          'date',
                                                          isGreaterThan:
                                                              getCurrentTimestamp
                                                                  .toString(),
                                                        )
                                                        .orderBy('date',
                                                            descending: true),
                                                limit: 3,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child: SpinKitThreeBounce(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<EventsRecord>
                                                    listViewEventsRecordList =
                                                    snapshot.data!;

                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      listViewEventsRecordList
                                                          .length,
                                                  itemBuilder:
                                                      (context, listViewIndex) {
                                                    final listViewEventsRecord =
                                                        listViewEventsRecordList[
                                                            listViewIndex];
                                                    return StreamBuilder<
                                                        List<EventsRecord>>(
                                                      stream: queryEventsRecord(
                                                        queryBuilder:
                                                            (eventsRecord) =>
                                                                eventsRecord
                                                                    .where(
                                                                      'sportsType',
                                                                      isEqualTo: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.facultyTeam,
                                                                          ''),
                                                                    )
                                                                    .where(
                                                                      'schoolName',
                                                                      isEqualTo: valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.userSchool,
                                                                          ''),
                                                                    )
                                                                    .where(
                                                                      'date',
                                                                      isGreaterThan:
                                                                          getCurrentTimestamp
                                                                              .toString(),
                                                                    )
                                                                    .orderBy(
                                                                        'date',
                                                                        descending:
                                                                            true),
                                                        limit: 3,
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              child:
                                                                  SpinKitThreeBounce(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 50.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        List<EventsRecord>
                                                            adminSchedule2EventsRecordList =
                                                            snapshot.data!;

                                                        return AdminSchedule2Widget(
                                                          key: Key(
                                                              'Keybc1_${listViewIndex}_of_${listViewEventsRecordList.length}'),
                                                          title:
                                                              listViewEventsRecord
                                                                  .date,
                                                          time: dateTimeFormat(
                                                            "jm",
                                                            listViewEventsRecord
                                                                .time!,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          date:
                                                              listViewEventsRecord
                                                                  .date,
                                                        );
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
