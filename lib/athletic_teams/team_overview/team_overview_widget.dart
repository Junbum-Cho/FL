import '/athletic_teams/team_rosters/team_rosters_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/form_field_controller.dart';
import '/match_related/match_results/match_results_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'team_overview_model.dart';
export 'team_overview_model.dart';

class TeamOverviewWidget extends StatefulWidget {
  const TeamOverviewWidget({
    super.key,
    required this.sportsName,
    required this.sportsLocation,
    required this.sportsVideo,
    required this.sportsImage,
    required this.shortSportsName,
    required this.sportsImage2,
    required this.sportsImage3,
    required this.sportsImage4,
    required this.sportsImage5,
    required this.sportsID,
  });

  final String? sportsName;
  final String? sportsLocation;
  final String? sportsVideo;
  final String? sportsImage;
  final String? shortSportsName;
  final String? sportsImage2;
  final String? sportsImage3;
  final String? sportsImage4;
  final String? sportsImage5;
  final int? sportsID;

  @override
  State<TeamOverviewWidget> createState() => _TeamOverviewWidgetState();
}

class _TeamOverviewWidgetState extends State<TeamOverviewWidget>
    with TickerProviderStateMixin {
  late TeamOverviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TeamOverviewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TeamOverview'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: const Offset(-20.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
      'iconButtonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.7, 0.7),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: const Offset(0.0, 40.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
      'tabBarOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
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
            begin: const Offset(0.0, 50.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        title: 'TeamOverview',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent(
                        'TEAM_OVERVIEW_arrow_back_ios_rounded_ICN');
                    logFirebaseEvent('IconButton_navigate_back');
                    context.pop();
                  },
                ),
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'xwrknjto' /* Teams */,
                ),
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '4o2g39sr' /* Team Preview */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                            ).animateOnPageLoad(
                                animationsMap['textOnPageLoadAnimation1']!),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.sportsName,
                                      'NA',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          letterSpacing: 0.0,
                                        ),
                                  ).animateOnPageLoad(animationsMap[
                                      'textOnPageLoadAnimation2']!),
                                ),
                                FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderRadius: 12.0,
                                  borderWidth: 1.0,
                                  buttonSize: 44.0,
                                  icon: Icon(
                                    Icons.videocam_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ).animateOnPageLoad(animationsMap[
                                    'iconButtonOnPageLoadAnimation']!),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '8kj4putq' /* At */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Container(
                                          width: 150.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: AutoSizeText(
                                            valueOrDefault<String>(
                                              widget.sportsLocation,
                                              'NA ',
                                            ),
                                            maxLines: 1,
                                            minFontSize: 8.0,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent2,
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              width: 2.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 8.0, 12.0, 8.0),
                                            child: AutoSizeText(
                                              valueOrDefault<String>(
                                                widget.shortSportsName,
                                                'NA',
                                              ),
                                              minFontSize: 8.0,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    const Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    const Duration(milliseconds: 500),
                                                imageUrl:
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
                                                        'Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/j43040fdytt5/Ethel_Walker_School_logo.svg';
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
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    }
                                                  }(),
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                ),
                                                width: 50.0,
                                                height: 50.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 5.0, 0.0),
                                          child: Container(
                                            width: 280.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: AutoSizeText(
                                                valueOrDefault<String>(
                                                  widget.sportsLocation,
                                                  'NA',
                                                ).maybeHandleOverflow(
                                                  maxChars: 25,
                                                  replacement: '…',
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 1,
                                                minFontSize: 20.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 33.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          lineHeight: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          const Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 500),
                                      imageUrl: valueOrDefault<String>(
                                        widget.sportsImage,
                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/505wl5azetbk/Avon_Old_Farms_Sports_Image_Background_Removed.png',
                                      ),
                                      width: double.infinity,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ).animateOnPageLoad(
                                animationsMap['containerOnPageLoadAnimation']!),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'zrk0c3rk' /* Team Info */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation3']!),
                        ],
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: VeracrossAPIRequestsGroup
                          .veracrossListAthleticRostersCall
                          .call(
                        serverAccessToken: FFAppState().serverAccessToken,
                        internalClassId: widget.sportsID?.toString(),
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
                        final containerVeracrossListAthleticRostersResponse =
                            snapshot.data!;

                        return Container(
                          width: double.infinity,
                          height: valueOrDefault<double>(
                            () {
                              if (_model.tabBarCurrentIndex == 0) {
                                return 800.0;
                              } else if (_model.tabBarCurrentIndex == 1) {
                                return (VeracrossAPIRequestsGroup
                                            .veracrossListAthleticRostersCall
                                            .personID(
                                              containerVeracrossListAthleticRostersResponse
                                                  .jsonBody,
                                            )!
                                            .length *
                                        200)
                                    .toDouble();
                              } else if (_model.tabBarCurrentIndex == 2) {
                                return 500.0;
                              } else {
                                return 500.0;
                              }
                            }(),
                            800.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: const Alignment(0.0, 0),
                                  child: FlutterFlowButtonTabBar(
                                    useToggleButtonStyle: true,
                                    isScrollable: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 22.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    unselectedLabelStyle: const TextStyle(),
                                    labelColor: Colors.white,
                                    unselectedLabelColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryText,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    unselectedBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    borderColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    borderWidth: 1.5,
                                    borderRadius: 36.0,
                                    elevation: 0.0,
                                    labelPadding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 3.0, 20.0, 3.0),
                                    tabs: [
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'qssq6o65' /* Overview */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'btmnxzb0' /* Rosters */,
                                        ),
                                      ),
                                      Tab(
                                        text:
                                            FFLocalizations.of(context).getText(
                                          '8m9iyrhu' /* Games */,
                                        ),
                                      ),
                                    ],
                                    controller: _model.tabBarController,
                                    onTap: (i) async {
                                      [
                                        () async {},
                                        () async {},
                                        () async {}
                                      ][i]();
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _model.tabBarController,
                                    children: [
                                      Container(
                                        width: 100.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    '${widget.shortSportsName} in ${FFAppState().schoolName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              if ((widget.sportsName != 'Cross Country') &&
                                                  (widget.shortSportsName !=
                                                      'Squash') &&
                                                  (widget.shortSportsName !=
                                                      'Wrestling') &&
                                                  (widget.shortSportsName !=
                                                      'Baseball') &&
                                                  (widget.shortSportsName !=
                                                      'Golf') &&
                                                  (widget.shortSportsName !=
                                                      'Tennis') &&
                                                  (widget.shortSportsName !=
                                                      'Swimming') &&
                                                  (widget.shortSportsName !=
                                                      'Track and Field'))
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(16.0),
                                                    child:
                                                        FlutterFlowVideoPlayer(
                                                      path:
                                                          widget.sportsVideo!,
                                                      videoType:
                                                          VideoType.network,
                                                      autoPlay: false,
                                                      looping: true,
                                                      showControls: true,
                                                      allowFullScreen: true,
                                                      allowPlaybackSpeedMenu:
                                                          false,
                                                    ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 30.0, 0.0, 0.0),
                                                child: SizedBox(
                                                  width: double.infinity,
                                                  height: 180.0,
                                                  child: CarouselSlider(
                                                    items: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl: widget
                                                              .sportsImage2!,
                                                          width: 400.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl: widget
                                                              .sportsImage3!,
                                                          width: 300.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl: widget
                                                              .sportsImage4!,
                                                          width: 300.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      500),
                                                          imageUrl: widget
                                                              .sportsImage5!,
                                                          width: 300.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                    carouselController: _model
                                                            .carouselController ??=
                                                        CarouselSliderController(),
                                                    options: CarouselOptions(
                                                      initialPage: 1,
                                                      viewportFraction: 0.7,
                                                      disableCenter: true,
                                                      enlargeCenterPage: true,
                                                      enlargeFactor: 0.3,
                                                      enableInfiniteScroll:
                                                          true,
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      autoPlay: false,
                                                      onPageChanged: (index,
                                                              _) =>
                                                          _model.carouselCurrentIndex =
                                                              index,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<ApiCallResponse>(
                                            future: VeracrossAPIRequestsGroup
                                                .veracrossListAthleticRostersCall
                                                .call(
                                              serverAccessToken: FFAppState()
                                                  .serverAccessToken,
                                              internalClassId:
                                                  widget.sportsID?.toString(),
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
                                              final conditionalBuilderVeracrossListAthleticRostersResponse =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  if (VeracrossAPIRequestsGroup
                                                              .veracrossListAthleticRostersCall
                                                              .studentFirstName(
                                                            conditionalBuilderVeracrossListAthleticRostersResponse
                                                                .jsonBody,
                                                          ) !=
                                                          null &&
                                                      (VeracrossAPIRequestsGroup
                                                              .veracrossListAthleticRostersCall
                                                              .studentFirstName(
                                                        conditionalBuilderVeracrossListAthleticRostersResponse
                                                            .jsonBody,
                                                      ))!
                                                          .isNotEmpty) {
                                                    return FutureBuilder<
                                                        ApiCallResponse>(
                                                      future: VeracrossAPIRequestsGroup
                                                          .veracrossListAthleticRostersCall
                                                          .call(
                                                        serverAccessToken:
                                                            FFAppState()
                                                                .serverAccessToken,
                                                        internalClassId: widget
                                                            .sportsID
                                                            ?.toString(),
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
                                                        final columnVeracrossListAthleticRostersResponse =
                                                            snapshot.data!;

                                                        return Builder(
                                                          builder: (context) {
                                                            final indexNum =
                                                                VeracrossAPIRequestsGroup
                                                                        .veracrossListAthleticRostersCall
                                                                        .studentFirstName(
                                                                          columnVeracrossListAthleticRostersResponse
                                                                              .jsonBody,
                                                                        )
                                                                        ?.toList() ??
                                                                    [];

                                                            return SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    indexNum
                                                                        .length,
                                                                    (indexNumIndex) {
                                                                  final indexNumItem =
                                                                      indexNum[
                                                                          indexNumIndex];
                                                                  return TeamRostersWidget(
                                                                    key: Key(
                                                                        'Keyj3q_${indexNumIndex}_of_${indexNum.length}'),
                                                                    playerName:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      '${VeracrossAPIRequestsGroup.veracrossListAthleticRostersCall.studentFirstName(
                                                                        columnVeracrossListAthleticRostersResponse
                                                                            .jsonBody,
                                                                      )?[indexNumIndex]} ${VeracrossAPIRequestsGroup.veracrossListAthleticRostersCall.studentSecondName(
                                                                        columnVeracrossListAthleticRostersResponse
                                                                            .jsonBody,
                                                                      )?[indexNumIndex]}',
                                                                      'John Doe',
                                                                    ),
                                                                    playerPosition:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticRostersCall
                                                                          .position(
                                                                        columnVeracrossListAthleticRostersResponse
                                                                            .jsonBody,
                                                                      )?[valueOrDefault<
                                                                          int>(
                                                                        indexNumIndex,
                                                                        0,
                                                                      )],
                                                                      'Not Specified.',
                                                                    ),
                                                                    sportsName:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      widget
                                                                          .sportsName,
                                                                      'Varsity Hockey',
                                                                    ),
                                                                    playerNumber:
                                                                        valueOrDefault<
                                                                            String>(
                                                                      VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticRostersCall
                                                                          .jerseyNumber(
                                                                        columnVeracrossListAthleticRostersResponse
                                                                            .jsonBody,
                                                                      )?[indexNumIndex],
                                                                      'Midfielder',
                                                                    ),
                                                                    playerImage:
                                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                                  );
                                                                }).addToStart(
                                                                    const SizedBox(
                                                                        height:
                                                                            30.0)),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    );
                                                  } else {
                                                    return Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    50.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            't0m3p42o' /* No data for this team. Sorry!  */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                fontSize: 18.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      23.0, 10.0, 0.0, 0.0),
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6mqaiy4v' /* 2024-2025 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'dqfiu9p9' /* 2023-2024 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'xmsbssky' /* 2022-2023 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9zqntnwh' /* 2022-2023 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '65tcdaog' /* 2021-2022 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'tpj45v4r' /* 2020-2021 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'ik1o6q6g' /* 2019-2020 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'yqxs3owr' /* 2018-2019 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '9c0nsu4h' /* 2017-2018 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'gfc9ot3z' /* 2016-2017 */,
                                                  ),
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'd18ogkyv' /* 2015-2016 */,
                                                  )
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .dropDownValue = val),
                                                width: 200.0,
                                                height: 48.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '4w1re01k' /* Select Season... */,
                                                ),
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                borderWidth: 2.0,
                                                borderRadius: 8.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ),
                                          FutureBuilder<ApiCallResponse>(
                                            future: VeracrossAPIRequestsGroup
                                                .veracrossListAthleticEventsCall
                                                .call(
                                              serverAccessToken: FFAppState()
                                                  .serverAccessToken,
                                              internalClassId:
                                                  widget.sportsID?.toString(),
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
                                              final columnVeracrossListAthleticEventsResponse =
                                                  snapshot.data!;

                                              return Builder(
                                                builder: (context) {
                                                  final indexNum1 =
                                                      VeracrossAPIRequestsGroup
                                                              .veracrossListAthleticEventsCall
                                                              .eventType(
                                                                columnVeracrossListAthleticEventsResponse
                                                                    .jsonBody,
                                                              )
                                                              ?.toList() ??
                                                          [];

                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                              indexNum1.length,
                                                              (indexNum1Index) {
                                                        final indexNum1Item =
                                                            indexNum1[
                                                                indexNum1Index];
                                                        return MatchResultsWidget(
                                                          key: Key(
                                                              'Keyhmd_${indexNum1Index}_of_${indexNum1.length}'),
                                                          sportsName:
                                                              valueOrDefault<
                                                                  String>(
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
                                                              valueOrDefault<
                                                                  String>(
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
                                                              valueOrDefault<
                                                                  String>(
                                                            () {
                                                              if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Avon Old Farms School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Choate Rosemary Hall') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'The Ethel Walker School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'The Hotchkiss School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Kent School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Kingswood Oxford School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Loomis Chaffee School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'Miss Porter\'s School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
                                                                  'The Taft School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                              } else if ((VeracrossAPIRequestsGroup
                                                                          .veracrossListAthleticEventsCall
                                                                          .opponentName(
                                                                    columnVeracrossListAthleticEventsResponse
                                                                        .jsonBody,
                                                                  )?[
                                                                      indexNum1Index]) ==
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
                                                          .divide(const SizedBox(
                                                              height: 10.0))
                                                          .addToStart(const SizedBox(
                                                              height: 20.0)),
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ).animateOnPageLoad(
                                animationsMap['tabBarOnPageLoadAnimation']!),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
