import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'ask_user_account_model.dart';
export 'ask_user_account_model.dart';

class AskUserAccountWidget extends StatefulWidget {
  const AskUserAccountWidget({super.key});

  @override
  State<AskUserAccountWidget> createState() => _AskUserAccountWidgetState();
}

class _AskUserAccountWidgetState extends State<AskUserAccountWidget> {
  late AskUserAccountModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AskUserAccountModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AskUserAccount'});
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
        title: 'AskUserAccount',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: double.infinity,
                constraints: const BoxConstraints(
                  maxWidth: 670.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/FL_1.jpeg',
                            ).image,
                          ),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 0.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                const Color(0x00FFFFFF),
                                FlutterFlowTheme.of(context).accent1
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                          ),
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 30.0, 24.0, 10.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'pj9lx88d' /* Join Us & Get Exclusive Conten... */,
                              ),
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .displayMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                    fontSize: 37.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ASK_USER_ACCOUNT_LOGIN_FOR_EXTERNAL_USER');
                                logFirebaseEvent('Button_auth');
                                GoRouter.of(context).prepareAuthEvent();
                                final user =
                                    await authManager.signInWithGoogle(context);
                                if (user == null) {
                                  return;
                                }
                                if (valueOrDefault<bool>(
                                        currentUserDocument?.gmailVerified,
                                        false) ==
                                    true) {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamedAuth(
                                    'Latest',
                                    context.mounted,
                                    queryParameters: {
                                      'code': serializeParam(
                                        'NA',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamedAuth(
                                      'UserOnboarding', context.mounted);

                                  logFirebaseEvent('Button_backend_call');

                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    gmailVerified: true,
                                    studentTeam: 'NA',
                                  ));
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'wc00cxs7' /* Login for external users */,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 60.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).accent1,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ASK_USER_ACCOUNT_LOG_IN_FOR_INTERNAL_USE');
                                logFirebaseEvent('Button_custom_action');
                                unawaited(
                                  () async {
                                    await actions.launchInExternalBrowser(
                                      'https://accounts.veracross.com/api-sandbox/oauth/authorize?client_id=2c62ed1578d44185b7fe258ceb6fbbd8&response_type=code&redirect_uri=https%3A%2F%2Ffoundersleagueportal.page.link%2Fvauth&scope=sso',
                                    );
                                  }(),
                                );
                              },
                              text: FFLocalizations.of(context).getText(
                                'np72upe8' /* Log in for internal users */,
                              ),
                              icon: FaIcon(
                                FontAwesomeIcons.google,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 60.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                color: const Color(0xFF8FC0FB),
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).accent1,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).alternate,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 75.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ASK_USER_ACCOUNT_USE_WITHOUT_ACCOUNT_BTN');
                                logFirebaseEvent('Button_alert_dialog');
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: const Text('Warning!'),
                                                content: const Text(
                                                    'If you use FL without an account, you won\'t have access to personalized profiles, which means you won\'t be able to interact wih the schools sport events that FL has to offer. Would you like to really continue?'),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: const Text('Confirm'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  logFirebaseEvent('Button_auth');
                                  GoRouter.of(context).prepareAuthEvent();
                                  final user = await authManager
                                      .signInAnonymously(context);
                                  if (user == null) {
                                    return;
                                  }
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamedAuth(
                                    'Latest',
                                    context.mounted,
                                    queryParameters: {
                                      'code': serializeParam(
                                        'NA',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                } else {
                                  logFirebaseEvent(
                                      'Button_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'zq5dyw1z' /* Use Without Account */,
                              ),
                              icon: Icon(
                                Icons.cloud_off_sharp,
                                color: FlutterFlowTheme.of(context).info,
                                size: 24.0,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 60.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).alternate,
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
