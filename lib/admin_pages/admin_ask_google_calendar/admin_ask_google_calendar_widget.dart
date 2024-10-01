import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'admin_ask_google_calendar_model.dart';
export 'admin_ask_google_calendar_model.dart';

class AdminAskGoogleCalendarWidget extends StatefulWidget {
  const AdminAskGoogleCalendarWidget({
    super.key,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
  });

  final String? title;
  final String? description;
  final DateTime? startTime;
  final DateTime? endTime;

  @override
  State<AdminAskGoogleCalendarWidget> createState() =>
      _AdminAskGoogleCalendarWidgetState();
}

class _AdminAskGoogleCalendarWidgetState
    extends State<AdminAskGoogleCalendarWidget> {
  late AdminAskGoogleCalendarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminAskGoogleCalendarModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminAskGoogleCalendar'});
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
        title: 'AdminAskGoogleCalendar',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl:
                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/cd4rm17jtxwk/png-transparent-google-calendar-logo-icon-removebg-preview.png',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                        alignment: const Alignment(0.0, 0.0),
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'd4lcm4me' /* Add to Google Calendar? */,
                      ),
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                letterSpacing: 0.0,
                              ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          24.0, 12.0, 24.0, 16.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '8vhya2wj' /* Would you like us to add the y... */,
                        ),
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ADMIN_ASK_GOOGLE_CALENDAR_YES_BTN_ON_TAP');
                                logFirebaseEvent('Button_custom_action');
                                _model.createdEvent = await actions.eventToJson(
                                  'Match with ${widget.title}',
                                  widget.description!,
                                  widget.startTime!,
                                  widget.endTime!,
                                );
                                logFirebaseEvent('Button_custom_action');
                                _model.accessToken =
                                    await actions.signInWithGoogle();
                                logFirebaseEvent('Button_custom_action');
                                await actions.addEventToCalendar(
                                  _model.accessToken!,
                                  _model.createdEvent!,
                                );
                                logFirebaseEvent('Button_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Sucessfully added schedule to Google Calendar!',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamed('Profiles');

                                safeSetState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'vti47427' /* Yes */,
                              ),
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context).info,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ADMIN_ASK_GOOGLE_CALENDAR_NO_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.pushNamed('Profiles');
                              },
                              text: FFLocalizations.of(context).getText(
                                'i3rgr4ot' /* No */,
                              ),
                              options: FFButtonOptions(
                                width: 150.0,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 2.0,
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
