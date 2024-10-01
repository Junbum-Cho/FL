import '/chat_g_p_t_component/ai_chat_component/ai_chat_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'chat_ai_screen_model.dart';
export 'chat_ai_screen_model.dart';

class ChatAiScreenWidget extends StatefulWidget {
  const ChatAiScreenWidget({super.key});

  @override
  State<ChatAiScreenWidget> createState() => _ChatAiScreenWidgetState();
}

class _ChatAiScreenWidgetState extends State<ChatAiScreenWidget> {
  late ChatAiScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatAiScreenModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'chat_ai_Screen'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CHAT_AI_SCREEN_chat_ai_Screen_ON_INIT_ST');
      // showProgressDots
      logFirebaseEvent('chat_ai_Screen_showProgressDots');
      _model.aiResponding = false;
      safeSetState(() {});
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
    return Title(
        title: 'chat_ai_Screen',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 55.0,
                        icon: Icon(
                          Icons.chevron_left,
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          size: 35.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'CHAT_AI_SCREEN_chevron_left_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_navigate_back');
                          context.pop();
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'msy4pvjv' /* AI Assisstance */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Container(
                            width: 50.0,
                            height: 25.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              borderRadius: BorderRadius.circular(48.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '70da92p8' /* Beta */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 15.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 16.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).primary,
                        borderRadius: 12.0,
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        icon: Icon(
                          Icons.refresh_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'CHAT_AI_SCREEN_refresh_rounded_ICN_ON_TA');
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed(
                            'chat_ai_Screen',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                              ),
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/blur_bg@1x.png',
                    ).image,
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.aiChatComponentModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: const AiChatComponentWidget(),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
