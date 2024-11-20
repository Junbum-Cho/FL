import '/components/school_team_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'athletic_teams_model.dart';
export 'athletic_teams_model.dart';

class AthleticTeamsWidget extends StatefulWidget {
  const AthleticTeamsWidget({super.key});

  @override
  State<AthleticTeamsWidget> createState() => _AthleticTeamsWidgetState();
}

class _AthleticTeamsWidgetState extends State<AthleticTeamsWidget>
    with TickerProviderStateMixin {
  late AthleticTeamsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AthleticTeamsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AthleticTeams'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation19': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'schoolTeamOnPageLoadAnimation20': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-40.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
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
        title: 'AthleticTeams',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'ATHLETIC_TEAMS_arrow_back_ios_rounded_IC');
                    logFirebaseEvent('IconButton_navigate_back');
                    context.pop();
                  },
                ),
              ),
              title: Text(
                '${FFAppState().schoolName} Teams',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: false,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: const TextStyle(),
                              labelColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              backgroundColor:
                                  FlutterFlowTheme.of(context).accent1,
                              unselectedBackgroundColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderColor: FlutterFlowTheme.of(context).primary,
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 8.0,
                              elevation: 0.0,
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              padding: const EdgeInsets.all(4.0),
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'o2kqn1kq' /* Fall */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    '295z0bv9' /* Winter */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'ho1kplb7' /* Spring */,
                                  ),
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [() async {}, () async {}, () async {}][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '4ds0vfe1' /* Football */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_2q8kztng_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Ryan Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v3yjyjnxn99z/football_at_avon_old_farms_school_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/9nveqy56nog3/Avon_Old_Farms_Football_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2o6mtmfdktsq/FL_Varsity_Football_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uy1clilql6xl/FL_Varsity_Football_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7sdzanf0d4u7/FL_Varsity_Football_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d28uq64wmg3b/AOF_Varsity_Football_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1109,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel1,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_football,
                                                  ),
                                                  teamName: 'Varsity ',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation1']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_3ve2oosi_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Junior Varsity Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Ryan Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v3yjyjnxn99z/football_at_avon_old_farms_school_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/9nveqy56nog3/Avon_Old_Farms_Football_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g01fgmr7lydy/AOF_JV_Football_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/himuat1ftl5t/AOF_JV_Football_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/j4thw91lc3mz/AOF_JV_Football_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/w7yq4kq8yjb3/AOF_JV_Football_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1108,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel2,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_football,
                                                  ),
                                                  teamName: 'Junior Varsity ',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation2']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_2qvxovsk_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Ryan Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v3yjyjnxn99z/football_at_avon_old_farms_school_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/9nveqy56nog3/Avon_Old_Farms_Football_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Football',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/hl8u3kcfsirh/AOF_Thirds_Football_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/o98pvf457fdw/AOF_Thirds_Football_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/sqa43gryg88z/AOF_Thirds_Football_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2dhjd16i64mu/AOF_Thirds_Football_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5512,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel3,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_football,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation3']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '3xtmptdf' /* Soccer */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_kiueed17_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1ymb8wwm4ic3/FL_Varsity_Soocer_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/e03kdf7l5sjw/FL_Varsity_Socccer_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/skn68bf7m80e/FL_Varsity_Soccer_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/890z54mldpkx/FL_Varsity_Soccer_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1117,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel4,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_soccer,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation4']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_4agfs943_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Junior Varsity Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/poslpoiiizqb/FL_JV_Soccer_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ai4m8sp4hgih/FL_JV_Soccer_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/f71xgtq2h71w/FL_JV_Soccer_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/sn5qdpa48rkz/FL_JV_Soccer_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5510,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel5,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_soccer,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation5']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_cv9uxy5a_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2xomuq0gy1xl/FL_Thirds_Soccer_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/pdn1r45c7yjt/FL_Thirds_Soccer_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/u6gafxy3mqnu/FL_Thirds_Soccer_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzxe6auonox6/FL_Thirds_Soccer_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1116,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel6,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_soccer,
                                                  ),
                                                  teamName: 'Thrids',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation6']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_51fzlywh_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Fourths Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Soccer',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2xomuq0gy1xl/FL_Thirds_Soccer_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/pdn1r45c7yjt/FL_Thirds_Soccer_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/u6gafxy3mqnu/FL_Thirds_Soccer_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzxe6auonox6/FL_Thirds_Soccer_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5509,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel7,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_soccer,
                                                  ),
                                                  teamName: 'Fourths',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation7']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ATHLETIC_TEAMS_PAGE_Text_jkpajg6q_ON_TAP');
                                            logFirebaseEvent(
                                                'Text_navigate_to');

                                            context.pushNamed(
                                              'TeamOverview',
                                              queryParameters: {
                                                'sportsName': serializeParam(
                                                  'Fourths Soccer',
                                                  ParamType.String,
                                                ),
                                                'sportsLocation':
                                                    serializeParam(
                                                  'Carriuolo Field',
                                                  ParamType.String,
                                                ),
                                                'sportsVideo': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                  ParamType.String,
                                                ),
                                                'sportsImage': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                  ParamType.String,
                                                ),
                                                'shortSportsName':
                                                    serializeParam(
                                                  'Soccer',
                                                  ParamType.String,
                                                ),
                                                'sportsImage2': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage3': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage4': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage5': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsID': serializeParam(
                                                  5513,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'cii2um1p' /* Cross Country */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation3']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ATHLETIC_TEAMS_Column_gn4o1mf9_ON_TAP');
                                            logFirebaseEvent(
                                                'Column_navigate_to');

                                            context.pushNamed(
                                              'TeamOverview',
                                              queryParameters: {
                                                'sportsName': serializeParam(
                                                  'Fourths Soccer',
                                                  ParamType.String,
                                                ),
                                                'sportsLocation':
                                                    serializeParam(
                                                  'Carriuolo Field',
                                                  ParamType.String,
                                                ),
                                                'sportsVideo': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h32armmbk0on/soccer_at_avon_old_farms_(720p).mp4',
                                                  ParamType.String,
                                                ),
                                                'sportsImage': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                  ParamType.String,
                                                ),
                                                'shortSportsName':
                                                    serializeParam(
                                                  'Soccer',
                                                  ParamType.String,
                                                ),
                                                'sportsImage2': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage3': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage4': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsImage5': serializeParam(
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                  ParamType.String,
                                                ),
                                                'sportsID': serializeParam(
                                                  5424,
                                                  ParamType.int,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'ATHLETIC_TEAMS_Container_fube6qxb_ON_TAP');
                                                  logFirebaseEvent(
                                                      'SchoolTeam_navigate_to');

                                                  context.pushNamed(
                                                    'TeamOverview',
                                                    queryParameters: {
                                                      'sportsName':
                                                          serializeParam(
                                                        'Cross Country',
                                                        ParamType.String,
                                                      ),
                                                      'sportsLocation':
                                                          serializeParam(
                                                        'Track & Field Area',
                                                        ParamType.String,
                                                      ),
                                                      'sportsVideo':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v3yjyjnxn99z/football_at_avon_old_farms_school_(720p).mp4',
                                                        ParamType.String,
                                                      ),
                                                      'sportsImage':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/5bvbmj6rxjr4/Avon_Old_Farms_Cross_Country_Image_Background_Removed.png',
                                                        ParamType.String,
                                                      ),
                                                      'shortSportsName':
                                                          serializeParam(
                                                        'Cross Country',
                                                        ParamType.String,
                                                      ),
                                                      'sportsImage2':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/llqjuaumw8hr/AOF_Cross_Country_1.jpg',
                                                        ParamType.String,
                                                      ),
                                                      'sportsImage3':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/wozn751d2af6/AOF_Cross_Country_2.jpg',
                                                        ParamType.String,
                                                      ),
                                                      'sportsImage4':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/59hug2o9oc6n/AOF_Cross_Country_3.jpg',
                                                        ParamType.String,
                                                      ),
                                                      'sportsImage5':
                                                          serializeParam(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m4akdlcwyi86/AOF_Cross_Country_4.jpg',
                                                        ParamType.String,
                                                      ),
                                                      'sportsID':
                                                          serializeParam(
                                                        5239,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );

                                                  logFirebaseEvent(
                                                      'SchoolTeam_haptic_feedback');
                                                  HapticFeedback.lightImpact();
                                                },
                                                child: wrapWithModel(
                                                  model:
                                                      _model.schoolTeamModel8,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const SchoolTeamWidget(
                                                    teamIcon: Icon(
                                                      Icons
                                                          .directions_run_sharp,
                                                    ),
                                                    teamName: 'Varsity',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation1']!),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'jtgn0otr' /* Hockey */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation4']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_h8djfwdu_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Fairchild Arena',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/505wl5azetbk/Avon_Old_Farms_Sports_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d426e8whdc3m/AOF_Varsity_Hockey_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1iiah8fexi1o/AOF_Varsity_Hockey_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1yfikhr36sti/AOF_Varsity_Hockey_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1107,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel9,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_hockey,
                                                  ),
                                                  teamName: 'Varsity ',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation8']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_28fbdo1q_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity B Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Fairchild Arena',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/505wl5azetbk/Avon_Old_Farms_Sports_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/hcuv5te4pozh/AOF_VarB_Hockey_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/agoq5rqn8a3z/AOF_VarB_Hockey_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1iiah8fexi1o/AOF_Varsity_Hockey_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/1yfikhr36sti/AOF_Varsity_Hockey_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1107,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel10,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_hockey,
                                                  ),
                                                  teamName: 'Varsity B',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation9']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_7ndbqol3_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Fairchild Arena',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/505wl5azetbk/Avon_Old_Farms_Sports_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1106,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel11,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_hockey,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation10']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_u1o9nz7a_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Fairchild Arena',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/505wl5azetbk/Avon_Old_Farms_Sports_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Hockey',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ex9bo82caiwa/AOF_Thirds_Red_Hockey.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/z2tlbs4n36ib/AOF_Thirds_Red_Hockey_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g62uj0dkn2h4/AOF_Thirds_Red_Hockey_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/u75ucb8f9dr5/AOF_Thirds_Red_Hockey_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5513,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel12,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_hockey,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation11']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'snj8fn26' /* Basketball */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation5']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_sqj91n2y_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Field House',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rfxz8plfw5rr/avon_old_farms_basketball_(540p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qz0foo2gbjpo/Avon_Old_Farms_Basketball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/btcoohvajena/AOF_Varsity_Basketball_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/x00wccxe82bf/AOF_Varsity_Basketball_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/0dxt6d7b5fig/AOF_Varsity_Basketball_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/008h50ih7kth/AOF_Varsity_Basketball_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1090,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel13,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_basketball,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation12']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_vbig10ht_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Field House',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rfxz8plfw5rr/avon_old_farms_basketball_(540p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qz0foo2gbjpo/Avon_Old_Farms_Basketball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/338o1opa9nc0/AOF_JV_Basketball_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/hrmkxihl48c7/AOF_JV_Basketball_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/0qtiyvujqgba/AOF_JV_Basketball_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qoq0bk1cv7ob/AOF_JV_Basketball_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1091,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel14,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_basketball,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation13']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_mmtqdntt_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds (Blue) Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Field House',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rfxz8plfw5rr/avon_old_farms_basketball_(540p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qz0foo2gbjpo/Avon_Old_Farms_Basketball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/eq0m88dtraz5/AOF_Thirds_Blue_Basketball_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/fxt2omfo1d9h/AOF_Thirds_Blue_Basketball_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/h3y9cazz5q1w/AOF_Thirds_Blue_Basketball_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dlbx6d6hinro/AOF_Thirds_Blue_Basketball_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5386,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel15,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_basketball,
                                                  ),
                                                  teamName: 'Thirds (Blue)',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation14']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_hoortxl1_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds (Red) Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Field House',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rfxz8plfw5rr/avon_old_farms_basketball_(540p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qz0foo2gbjpo/Avon_Old_Farms_Basketball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Basketball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/nvdnmejjya9a/AOF_Thirds_Red_Basketball_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6cplfqjixf7x/AOF_Thirds_Red_Basketball_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/4d10r4acmrsz/AOF_Thirds_Red_Basketball_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/fnvoits40ij2/AOF_Thirds_Red_Basketball_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5193,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel16,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_basketball,
                                                  ),
                                                  teamName: 'Thirds (Red)',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation15']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '9heor8q0' /* Squash */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation6']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_g7ynlj80_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Gaynor Squash Pavilion',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/gmo8t91fyrgl/Avon_Old_Farms_Squash_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      '',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2xtd51li0ud2/AOF_Varsity_Squash_1.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/vf0dkvxsqj5g/AOF_Varsity_Squash_2.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rw19whlrfft2/AOF_Varsity_Squash_3.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3hmlcy2mfcut/AOF_Varsity_Squash_4.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1133,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel17,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation16']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_90nb28qu_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Gaynor Squash Pavilion',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/gmo8t91fyrgl/Avon_Old_Farms_Squash_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      '',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1131,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel18,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation17']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_dgs090ej_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Gaynor Squash Pavilion',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/gmo8t91fyrgl/Avon_Old_Farms_Squash_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Squash',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      '',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5521,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel19,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation18']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8k2j0kul' /* Swimming */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation7']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_3fkn87zv_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Swimming',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Miss Porter\'s School',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/n58dosy1dibl/Avon_Old_Farms_Swimming.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Swimming',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ahnji3fl8shv/Swimming_In_Avon_Old_Farms.png',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1121,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel20,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: FaIcon(
                                                    FontAwesomeIcons
                                                        .swimmingPool,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation19']!),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'c5mpvhrf' /* Wrestling */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation8']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_0rxzzgh6_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Wrestling',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Tiernan Room',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dz60j8ncmumy/Avon_Old_Farms_Wrestling_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Wrestling',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ahnji3fl8shv/Swimming_In_Avon_Old_Farms.png',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1134,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel21,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: FaIcon(
                                                    FontAwesomeIcons.fistRaised,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'schoolTeamOnPageLoadAnimation20']!),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'fkmf4txz' /* Baseball */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation9']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_immnrzri_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carpenter Baseball Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/zdz4x5gqgnfs/Avon_Old_Farms_Baseball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1087,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel22,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_baseball,
                                                  ),
                                                  teamName: 'Varsity ',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_nd0ac7eu_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carpenter Baseball Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/zdz4x5gqgnfs/Avon_Old_Farms_Baseball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1086,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel23,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_baseball,
                                                  ),
                                                  teamName: 'Junior Varsity ',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_lo3q1y4t_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carpenter Baseball Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/zdz4x5gqgnfs/Avon_Old_Farms_Baseball_Image_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Baseball',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5500,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel24,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_baseball,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation2']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'fbbda9fq' /* Golf */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation10']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_qhrfm15x_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Golf',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Farmington Woods Country Club',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/z97khnogsnm9/Avon_Old_Farms_School_Golf.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Golf',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1110,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel25,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.golf_course,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_q6cw21t2_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Golf',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Farmington Woods Country Club',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/a9ylx2xyprv6/hockey_at_avon_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/z97khnogsnm9/Avon_Old_Farms_School_Golf.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Golf',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1110,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel26,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.golf_course,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation3']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'c9u69xvx' /* Lacrosse */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation11']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_anyx5gm2_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/aeok4gongiz8/Avon_Old_Farms_Lacrosse_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5505,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel27,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_motorsports,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_fbm26lb6_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity B Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/aeok4gongiz8/Avon_Old_Farms_Lacrosse_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1113,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel28,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_motorsports,
                                                  ),
                                                  teamName: 'Varsity B',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_vy0y3bmp_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/aeok4gongiz8/Avon_Old_Farms_Lacrosse_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1111,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel29,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_motorsports,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_81iobp4n_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'Carriuolo Field',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/aeok4gongiz8/Avon_Old_Farms_Lacrosse_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Lacrosse',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1112,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel30,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_motorsports,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation4']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8nt8elmg' /* Tennis */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation12']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_xu91opnb_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Varsity Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'The Globe Tennis Foundation Courts',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/exlyy7s37j0g/Avon_Old_Farms_Tennis_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1125,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel31,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Varsity',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_enwakvxz_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'JV Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'The Globe Tennis Foundation Courts',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/exlyy7s37j0g/Avon_Old_Farms_Tennis_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      5520,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel32,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Junior Varsity',
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'ATHLETIC_TEAMS_Container_xoy7hf97_ON_TAP');
                                                logFirebaseEvent(
                                                    'SchoolTeam_navigate_to');

                                                context.pushNamed(
                                                  'TeamOverview',
                                                  queryParameters: {
                                                    'sportsName':
                                                        serializeParam(
                                                      'Thirds Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsLocation':
                                                        serializeParam(
                                                      'The Globe Tennis Foundation Courts',
                                                      ParamType.String,
                                                    ),
                                                    'sportsVideo':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/jtnwm8t2d0hb/welcome_to_avon_lacrosse_(720p).mp4',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/exlyy7s37j0g/Avon_Old_Farms_Tennis_Background_Removed.png',
                                                      ParamType.String,
                                                    ),
                                                    'shortSportsName':
                                                        serializeParam(
                                                      'Tennis',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage2':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage3':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage4':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsImage5':
                                                        serializeParam(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                                                      ParamType.String,
                                                    ),
                                                    'sportsID': serializeParam(
                                                      1123,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
                                                );

                                                logFirebaseEvent(
                                                    'SchoolTeam_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                              },
                                              child: wrapWithModel(
                                                model: _model.schoolTeamModel33,
                                                updateCallback: () =>
                                                    safeSetState(() {}),
                                                child: const SchoolTeamWidget(
                                                  teamIcon: Icon(
                                                    Icons.sports_tennis,
                                                  ),
                                                  teamName: 'Thirds',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ).animateOnPageLoad(animationsMap[
                                            'columnOnPageLoadAnimation5']!),
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
