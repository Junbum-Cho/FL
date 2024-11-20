import '/backend/api_requests/api_calls.dart';
import '/components/school_team_widget.dart';
import '/f_l_bar/option2/option2_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/match_related/match_results/match_results_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'each_school_profile_model.dart';
export 'each_school_profile_model.dart';

class EachSchoolProfileWidget extends StatefulWidget {
  const EachSchoolProfileWidget({
    super.key,
    String? schoolName,
    required this.schoolColor,
    required this.schoolSportsImage,
    required this.schoolLogoImage,
    String? schoolExplanation,
  })  : schoolName = schoolName ?? 'NA',
        schoolExplanation = schoolExplanation ?? 'Est: 1927 Avon, CT';

  final String schoolName;
  final Color? schoolColor;
  final String? schoolSportsImage;
  final String? schoolLogoImage;
  final String schoolExplanation;

  @override
  State<EachSchoolProfileWidget> createState() =>
      _EachSchoolProfileWidgetState();
}

class _EachSchoolProfileWidgetState extends State<EachSchoolProfileWidget>
    with TickerProviderStateMixin {
  late EachSchoolProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EachSchoolProfileModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'EachSchoolProfile'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
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
      'schoolTeamOnPageLoadAnimation21': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation22': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation23': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation24': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation25': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation26': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation27': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation28': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation29': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation30': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation31': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation32': AnimationInfo(
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
      'schoolTeamOnPageLoadAnimation33': AnimationInfo(
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
        title: 'EachSchoolProfile',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: valueOrDefault<Color>(
                widget.schoolColor,
                FlutterFlowTheme.of(context).accent1,
              ),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 35.0,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: () {
                    if (widget.schoolName == 'Choate Rosemary Hall') {
                      return FlutterFlowTheme.of(context).primaryText;
                    } else if (widget.schoolName == 'Westminster School') {
                      return FlutterFlowTheme.of(context).primaryText;
                    } else {
                      return FlutterFlowTheme.of(context).secondaryBackground;
                    }
                  }(),
                  size: 25.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('EACH_SCHOOL_PROFILE_arrow_back_ios_new_I');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                widget.schoolName,
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: () {
                        if (widget.schoolName == 'Choate Rosemary Hall') {
                          return FlutterFlowTheme.of(context).primaryText;
                        } else if (widget.schoolName == 'Westminster School') {
                          return FlutterFlowTheme.of(context).primaryText;
                        } else {
                          return FlutterFlowTheme.of(context)
                              .secondaryBackground;
                        }
                      }(),
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
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
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(0.0),
                    ),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeOutDuration: const Duration(milliseconds: 500),
                      imageUrl: valueOrDefault<String>(
                        widget.schoolSportsImage,
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8dcjgf4ui1b1/Avon_Old_Farms_Sports_Image.jpg',
                      ),
                      width: 431.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 124.0,
                    decoration: BoxDecoration(
                      color: valueOrDefault<Color>(
                        widget.schoolColor,
                        FlutterFlowTheme.of(context).accent1,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl: valueOrDefault<String>(
                                widget.schoolLogoImage,
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                              ),
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 20.0, 0.0, 0.0),
                                child: AutoSizeText(
                                  widget.schoolName,
                                  maxLines: 2,
                                  minFontSize: 12.0,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: () {
                                          if (widget.schoolName ==
                                              'Choate Rosemary Hall') {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else if (widget.schoolName ==
                                              'Westminster School') {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          }
                                        }(),
                                        fontSize: 23.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-0.6, 0.23),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 14.0, 0.0, 0.0),
                                child: Text(
                                  widget.schoolExplanation,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: () {
                                          if (widget.schoolName ==
                                              'Choate Rosemary Hall') {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else if (widget.schoolName ==
                                              'Westminster School') {
                                            return FlutterFlowTheme.of(context)
                                                .primaryText;
                                          } else {
                                            return FlutterFlowTheme.of(context)
                                                .secondaryBackground;
                                          }
                                        }(),
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: FlutterFlowButtonTabBar(
                              useToggleButtonStyle: true,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 17.0,
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
                              borderColor: const Color(0x00570846),
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).alternate,
                              borderWidth: 2.0,
                              borderRadius: 20.0,
                              elevation: 1.0,
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              padding: const EdgeInsets.all(14.0),
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'ozztud4r' /* Overview */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'n3e7zgbm' /* Athletics */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'cv80c6wj' /* Fixtures */,
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 15.0, 0.0, 0.0),
                                        child: Text(
                                          'Visit ${valueOrDefault<String>(
                                            widget.schoolName,
                                            'NA',
                                          )}',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'EACH_SCHOOL_PROFILE_Container_br5ey9le_O');
                                            if (widget.schoolName ==
                                                'Avon Old Farms School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.avonoldfarms.com/');
                                            } else if (widget.schoolName ==
                                                'Choate Rosemary Hall') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.choate.edu/');
                                            } else if (widget.schoolName ==
                                                'The Ethel Walker School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.ethelwalker.org/');
                                            } else if (widget.schoolName ==
                                                'The Hotchkiss School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.hotchkiss.org/');
                                            } else if (widget.schoolName ==
                                                'Kent School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.kent-school.edu/');
                                            } else if (widget.schoolName ==
                                                'Kingswood Oxford School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.kingswoodoxford.org/');
                                            } else if (widget.schoolName ==
                                                'Loomis Chaffee School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.loomischaffee.org/');
                                            } else if (widget.schoolName ==
                                                'Miss Porter\'s School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.porters.org/');
                                            } else if (widget.schoolName ==
                                                'The Taft School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.taftschool.org/');
                                            } else if (widget.schoolName ==
                                                'Trinity-Pawling School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.trinitypawling.org/');
                                            } else if (widget.schoolName ==
                                                'Westminster School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.westminster.org.uk/');
                                            }
                                          },
                                          child: wrapWithModel(
                                            model: _model.option2Model1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Option2Widget(
                                              optionName: 'Official Wesite',
                                              optionIcon: Icon(
                                                Icons.web_asset,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
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
                                                'EACH_SCHOOL_PROFILE_Container_i1mwhqwi_O');
                                            if (widget.schoolName ==
                                                'Avon Old Farms School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/aof_athletics/');
                                            } else if (widget.schoolName ==
                                                'Choate Rosemary Hall') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/choateathletics/');
                                            } else if (widget.schoolName ==
                                                'The Ethel Walker School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/walkersathletics/');
                                            } else if (widget.schoolName ==
                                                'The Hotchkiss School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/hotchkissathletics/');
                                            } else if (widget.schoolName ==
                                                'Kent School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/kentschool_ct/tagged/');
                                            } else if (FFAppState()
                                                    .schoolName ==
                                                'Kingswood Oxford School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/wyvernathletics/');
                                            } else if (widget.schoolName ==
                                                'Loomis Chaffee School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/loomisathletics/');
                                            } else if (widget.schoolName ==
                                                'Miss Porter\'s School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/missportersathletics/');
                                            } else if (widget.schoolName ==
                                                'The Taft School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/taftrhinos/');
                                            } else if (widget.schoolName ==
                                                'Trinity-Pawling School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/tpprideathletics/');
                                            } else if (widget.schoolName ==
                                                'Westminster School') {
                                              logFirebaseEvent(
                                                  'Option2_launch_u_r_l');
                                              await launchURL(
                                                  'https://www.instagram.com/westy_athletics/');
                                            }
                                          },
                                          child: wrapWithModel(
                                            model: _model.option2Model2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: Option2Widget(
                                              optionName:
                                                  'Official Athletics Media',
                                              optionIcon: FaIcon(
                                                FontAwesomeIcons.instagram,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 5.0))
                                          .addToStart(const SizedBox(height: 10.0)),
                                    ),
                                  ],
                                ),
                                Builder(
                                  builder: (context) {
                                    if (widget.schoolName ==
                                        'Avon Old Farms School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_9g68wqz0_O');
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
                                                    'EACH_SCHOOL_PROFILE_Container_rvi30sp1_O');
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
                                                    'EACH_SCHOOL_PROFILE_Container_f3q7k905_O');
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
                                      );
                                    } else if (widget.schoolName ==
                                        'Choate Rosemary Hall') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_1vd2fmq2_O');
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
                                                model: _model.schoolTeamModel4,
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
                                                'schoolTeamOnPageLoadAnimation4']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_1r90knok_O');
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
                                                model: _model.schoolTeamModel5,
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
                                                'schoolTeamOnPageLoadAnimation5']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_1btfk38l_O');
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
                                                model: _model.schoolTeamModel6,
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
                                                'schoolTeamOnPageLoadAnimation6']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'The Ethel Walker School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_6o0ajude_O');
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
                                                model: _model.schoolTeamModel7,
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
                                                'schoolTeamOnPageLoadAnimation7']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_b9982s79_O');
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
                                                model: _model.schoolTeamModel8,
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
                                                'schoolTeamOnPageLoadAnimation8']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_posjb4n4_O');
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
                                                model: _model.schoolTeamModel9,
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
                                                'schoolTeamOnPageLoadAnimation9']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'The Hotchkiss School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_id2c339s_O');
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
                                                model: _model.schoolTeamModel10,
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
                                                'schoolTeamOnPageLoadAnimation10']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_nor9cw4g_O');
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
                                                model: _model.schoolTeamModel11,
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
                                                'schoolTeamOnPageLoadAnimation11']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_bj7p59ui_O');
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
                                                model: _model.schoolTeamModel12,
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
                                                'schoolTeamOnPageLoadAnimation12']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'Kent School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_pkjhyuge_O');
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
                                                model: _model.schoolTeamModel13,
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
                                                'schoolTeamOnPageLoadAnimation13']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_3guccmyt_O');
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
                                                model: _model.schoolTeamModel14,
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
                                                'schoolTeamOnPageLoadAnimation14']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_71ymi5yq_O');
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
                                                model: _model.schoolTeamModel15,
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
                                                'schoolTeamOnPageLoadAnimation15']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'Kingswood Oxford School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_mn7p7g5h_O');
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
                                                model: _model.schoolTeamModel16,
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
                                                'schoolTeamOnPageLoadAnimation16']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_24wqcerr_O');
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
                                                model: _model.schoolTeamModel17,
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
                                                'schoolTeamOnPageLoadAnimation17']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_mug4bezo_O');
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
                                                model: _model.schoolTeamModel18,
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
                                                'schoolTeamOnPageLoadAnimation18']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'Loomis Chaffee School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_g7cuggq6_O');
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
                                                model: _model.schoolTeamModel19,
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
                                                'schoolTeamOnPageLoadAnimation19']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_czpyqsx9_O');
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
                                                model: _model.schoolTeamModel20,
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
                                                'schoolTeamOnPageLoadAnimation20']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_mcahoaux_O');
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
                                                model: _model.schoolTeamModel21,
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
                                                'schoolTeamOnPageLoadAnimation21']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'Miss Porter\'s School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_kpov8fb9_O');
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
                                                model: _model.schoolTeamModel22,
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
                                                'schoolTeamOnPageLoadAnimation22']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_rlwqsjj7_O');
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
                                                model: _model.schoolTeamModel23,
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
                                                'schoolTeamOnPageLoadAnimation23']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_p0eqzow1_O');
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
                                                model: _model.schoolTeamModel24,
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
                                                'schoolTeamOnPageLoadAnimation24']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'The Taft School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_mao143cj_O');
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
                                                model: _model.schoolTeamModel25,
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
                                                'schoolTeamOnPageLoadAnimation25']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_0smlztsz_O');
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
                                                model: _model.schoolTeamModel26,
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
                                                'schoolTeamOnPageLoadAnimation26']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_migp131x_O');
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
                                                model: _model.schoolTeamModel27,
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
                                                'schoolTeamOnPageLoadAnimation27']!),
                                          ],
                                        ),
                                      );
                                    } else if (widget.schoolName ==
                                        'Trinity-Pawling School') {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_9ppbsatw_O');
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
                                                model: _model.schoolTeamModel28,
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
                                                'schoolTeamOnPageLoadAnimation28']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_6ir0zc70_O');
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
                                                model: _model.schoolTeamModel29,
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
                                                'schoolTeamOnPageLoadAnimation29']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_m90cwmzt_O');
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
                                                model: _model.schoolTeamModel30,
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
                                                'schoolTeamOnPageLoadAnimation30']!),
                                          ],
                                        ),
                                      );
                                    } else {
                                      return Padding(
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
                                                    'EACH_SCHOOL_PROFILE_Container_jv9kgpv3_O');
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
                                                model: _model.schoolTeamModel31,
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
                                                'schoolTeamOnPageLoadAnimation31']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_5f7ugh37_O');
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
                                                model: _model.schoolTeamModel32,
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
                                                'schoolTeamOnPageLoadAnimation32']!),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EACH_SCHOOL_PROFILE_Container_mltc0ytf_O');
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
                                                model: _model.schoolTeamModel33,
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
                                                'schoolTeamOnPageLoadAnimation33']!),
                                          ],
                                        ),
                                      );
                                    }
                                  },
                                ),
                                FutureBuilder<ApiCallResponse>(
                                  future: VeracrossAPIRequestsGroup
                                      .veracrossListAthleticEventsCall
                                      .call(
                                    serverAccessToken:
                                        FFAppState().serverAccessToken,
                                    onOrAfterStartDate: dateTimeFormat(
                                      "yyyy-MM-dd",
                                      getCurrentTimestamp,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
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
                                    final columnVeracrossListAthleticEventsResponse =
                                        snapshot.data!;

                                    return Builder(
                                      builder: (context) {
                                        final indexNum1 = VeracrossAPIRequestsGroup
                                                .veracrossListAthleticEventsCall
                                                .eventType(
                                                  columnVeracrossListAthleticEventsResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];

                                        return SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                    indexNum1.length,
                                                    (indexNum1Index) {
                                              final indexNum1Item =
                                                  indexNum1[indexNum1Index];
                                              return MatchResultsWidget(
                                                key: Key(
                                                    'Keyt69_${indexNum1Index}_of_${indexNum1.length}'),
                                                sportsName:
                                                    valueOrDefault<String>(
                                                  VeracrossAPIRequestsGroup
                                                      .veracrossListAthleticEventsCall
                                                      .startDate(
                                                    columnVeracrossListAthleticEventsResponse
                                                        .jsonBody,
                                                  )?[indexNum1Index],
                                                  '2024/11/16',
                                                ),
                                                schoolScore1:
                                                    (VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .score(
                                                  columnVeracrossListAthleticEventsResponse
                                                      .jsonBody,
                                                )![indexNum1Index])
                                                        .round(),
                                                schoolScore2:
                                                    (VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentScore(
                                                  columnVeracrossListAthleticEventsResponse
                                                      .jsonBody,
                                                )![indexNum1Index])
                                                        .round(),
                                                schoolOneName:
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
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    }
                                                  }(),
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                ),
                                                schoolTwoName:
                                                    valueOrDefault<String>(
                                                  () {
                                                    if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else if ((VeracrossAPIRequestsGroup
                                                            .veracrossListAthleticEventsCall
                                                            .opponentName(
                                                          columnVeracrossListAthleticEventsResponse
                                                              .jsonBody,
                                                        )?[indexNum1Index]) ==
                                                        'Westminster School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k3u8jgp8tc1n/Choate_Logo.png';
                                                    }
                                                  }(),
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k3u8jgp8tc1n/Choate_Logo.png',
                                                ),
                                              );
                                            })
                                                .divide(const SizedBox(height: 10.0))
                                                .addToStart(
                                                    const SizedBox(height: 20.0)),
                                          ),
                                        );
                                      },
                                    );
                                  },
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
