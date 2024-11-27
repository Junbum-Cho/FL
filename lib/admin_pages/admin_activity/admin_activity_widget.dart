import '/admin_components/admin_activity_list/admin_activity_list_widget.dart';
import '/admin_components/admin_banner/admin_banner_widget.dart';
import '/admin_components/admin_dashboard/admin_dashboard_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'admin_activity_model.dart';
export 'admin_activity_model.dart';

class AdminActivityWidget extends StatefulWidget {
  const AdminActivityWidget({super.key});

  @override
  State<AdminActivityWidget> createState() => _AdminActivityWidgetState();
}

class _AdminActivityWidgetState extends State<AdminActivityWidget> {
  late AdminActivityModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminActivityModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminActivity'});
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
        title: 'AdminActivity',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.adminBannerModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const AdminBannerWidget(),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.adminDashboardModel,
                            updateCallback: () => safeSetState(() {}),
                            child: AdminDashboardWidget(
                              faulctySport: FFAppState().facultyTeam,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'ADMIN_ACTIVITY_Container_bqlavfg4_ON_TAP');
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed(
                                'AdminMatchSchedule',
                                queryParameters: {
                                  'facultyTeam': serializeParam(
                                    FFAppState().facultyTeam,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );

                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Schedule a Match',
                                actionDescription:
                                    'Schedule New Match for your team',
                                facultySport: 'Thirds Hokey',
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
                                  'ADMIN_ACTIVITY_Container_1sbqf2zn_ON_TAP');
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed('notification_Create');

                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Send out Notifications',
                                actionDescription:
                                    'Send push notifications to all students in your team.',
                                facultySport: ' Thirds Hockey',
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
                                  'ADMIN_ACTIVITY_Container_83lsala1_ON_TAP');
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed('AdminUpdateScore');

                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Update Game Result',
                                actionDescription:
                                    'Update Game Result for your team\'s recent match.',
                                facultySport: 'Thirds Hockey',
                              ),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ADMIN_ACTIVITY_Container_hhnzmjg2_ON_TAP');
                                logFirebaseEvent(
                                    'AdminActivityList_navigate_to');

                                context.pushNamed('AdmineTeamPlayerList');

                                logFirebaseEvent(
                                    'AdminActivityList_haptic_feedback');
                                HapticFeedback.lightImpact();
                              },
                              child: wrapWithModel(
                                model: _model.adminActivityListModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: AdminActivityListWidget(
                                  actionTitle: 'Edit My Team',
                                  actionDescription:
                                      'Edit Players associated with ${valueOrDefault(currentUserDocument?.facultyTeam, '')}',
                                  facultySport: ' Thirds Hockey',
                                ),
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
                                  'ADMIN_ACTIVITY_Container_fc97zwdy_ON_TAP');
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed('AdmineTeamPlayerList');

                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Update Statistics',
                                actionDescription:
                                    'Update This Week\'s Athlete, Most offensive Temas, and more. ',
                                facultySport: ' Thirds Hockey',
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
                                  'ADMIN_ACTIVITY_Container_cyczpx82_ON_TAP');
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed('AdminUpdateBanner');

                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Update Realtime Banner',
                                actionDescription:
                                    'Update the contents of the real time banner located in the Home page. ',
                                facultySport: ' Thirds Hockey',
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
                                  'ADMIN_ACTIVITY_Container_2e26e9wf_ON_TAP');
                              logFirebaseEvent(
                                  'AdminActivityList_haptic_feedback');
                              HapticFeedback.lightImpact();
                              logFirebaseEvent('AdminActivityList_navigate_to');

                              context.pushNamed('AdminDevRequest');
                            },
                            child: wrapWithModel(
                              model: _model.adminActivityListModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: const AdminActivityListWidget(
                                actionTitle: 'Send Developer a Request',
                                actionDescription:
                                    'Send urgent requeset/inquiry to the developer, Junbum Cho. ',
                                facultySport: 'Thirds Hockey',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
