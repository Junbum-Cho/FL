import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'login_successful_model.dart';
export 'login_successful_model.dart';

class LoginSuccessfulWidget extends StatefulWidget {
  const LoginSuccessfulWidget({super.key});

  @override
  State<LoginSuccessfulWidget> createState() => _LoginSuccessfulWidgetState();
}

class _LoginSuccessfulWidgetState extends State<LoginSuccessfulWidget> {
  late LoginSuccessfulModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginSuccessfulModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LoginSuccessful'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LOGIN_SUCCESSFUL_LoginSuccessful_ON_INIT');
      logFirebaseEvent('LoginSuccessful_custom_action');
      _model.redirectURL = await actions.handleOAuthRedirect(
        context,
      );
      logFirebaseEvent('LoginSuccessful_custom_action');
      _model.authCode1 = await actions.extractAuthCodeFromUri(
        _model.redirectURL!,
      );
      logFirebaseEvent('LoginSuccessful_update_page_state');
      _model.authCode = _model.authCode1!;
      safeSetState(() {});
      logFirebaseEvent('LoginSuccessful_backend_call');
      _model.apiResultjq8 = await VeracrossAuthenticationGroup
          .veracrossExchangeAuthorizationTokenCall
          .call(
        code: _model.authCode1,
      );

      if ((_model.apiResultjq8?.succeeded ?? true)) {
        logFirebaseEvent('LoginSuccessful_update_app_state');
        FFAppState().userAccessToken = (_model.apiResultjq8?.bodyText ?? '');
        safeSetState(() {});
      }
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
        title: 'LoginSuccessful',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent2,
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Icon(
                            Icons.check_circle,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 120.0,
                          ),
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'zfrs31zp' /* Login Successful! */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context)
                            .headlineLarge
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'w8zyjxso' /* Welcome back to your account. ... */,
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'qxi2j5pn' /* What would you like to do next... */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'LOGIN_SUCCESSFUL_GO_TO_HOME_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed('Latest');
                            },
                            text: FFLocalizations.of(context).getText(
                              'doyr15cn' /* Go to Home */,
                            ),
                            icon: Icon(
                              Icons.dashboard,
                              color: FlutterFlowTheme.of(context).info,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 250.0,
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
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'i1k8rgdj' /* View Profile */,
                            ),
                            icon: Icon(
                              Icons.person,
                              color: FlutterFlowTheme.of(context).info,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 250.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).secondary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: FFLocalizations.of(context).getText(
                              'y54rlgkf' /* Browse FL */,
                            ),
                            icon: Icon(
                              Icons.article,
                              color: FlutterFlowTheme.of(context).info,
                              size: 15.0,
                            ),
                            options: FFButtonOptions(
                              width: 250.0,
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).tertiary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 2.0,
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                          ),
                        ].divide(const SizedBox(height: 16.0)),
                      ),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 1.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                      ),
                    ].divide(const SizedBox(height: 32.0)),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
