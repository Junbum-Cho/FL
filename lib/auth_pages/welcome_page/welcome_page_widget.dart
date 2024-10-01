import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'welcome_page_model.dart';
export 'welcome_page_model.dart';

class WelcomePageWidget extends StatefulWidget {
  const WelcomePageWidget({super.key});

  @override
  State<WelcomePageWidget> createState() => _WelcomePageWidgetState();
}

class _WelcomePageWidgetState extends State<WelcomePageWidget>
    with TickerProviderStateMixin {
  late WelcomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'WelcomePage'});
    animationsMap.addAll({
      'staggeredViewOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, -80.0),
            end: const Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3200.0.ms,
            duration: 3200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -80.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 20.0),
            end: const Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.9, 0.9),
            end: const Offset(1.0, 1.0),
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
    return Title(
        title: 'WelcomePage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).accent1,
            body: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.5,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 700.0,
                        child: Stack(
                          children: [
                            MasonryGridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return [
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/AOF_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: Image.asset(
                                            'assets/images/Choat_logo.png',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                  () => Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 50.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(16.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(16.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.asset(
                                            'assets/images/Loomis_Logo.png',
                                            width: 120.0,
                                            height: 120.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Miss_Porters_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Taft_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/images/Ethel_Walker_School_logo.svg',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Kingswood_Oxford_logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/The_Hotchkiss_School_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Kent_School_Logo_advanced.PNG',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Westminster_School_logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Trinity-Pawling_School_Logo_.jpg',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(0.0),
                                          bottomRight: Radius.circular(16.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(16.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/AOF_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Choat_logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(16.0),
                                          bottomRight: Radius.circular(0.0),
                                          topLeft: Radius.circular(16.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        child: Image.asset(
                                          'assets/images/Loomis_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                  () => ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        child: Image.asset(
                                          'assets/images/Miss_Porters_Logo.png',
                                          width: 120.0,
                                          height: 120.0,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                ][index]();
                              },
                            ).animateOnPageLoad(animationsMap[
                                'staggeredViewOnPageLoadAnimation']!),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.sizeOf(context).height * 0.5,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    const Color(0x00FFFFFF),
                                    FlutterFlowTheme.of(context).accent1
                                  ],
                                  stops: const [0.0, 0.95],
                                  begin: const AlignmentDirectional(0.0, -1.0),
                                  end: const AlignmentDirectional(0, 1.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
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
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 210.0,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 50.0),
                                    child: PageView(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  48.0, 0.0, 48.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wzipcdrn' /* Welcome to the Founders League */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'oqo0t0q2' /* We are nationally recognized a... */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation2']!),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  48.0, 0.0, 48.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ij0xxqnj' /* Personalized Sports Contents */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 30.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation3']!),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 15.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '8y7488ft' /* Enjoy each contents specialize... */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation4']!),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  48.0, 0.0, 48.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7rpu0e28' /* Everything about Athletics */,
                                                ),
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation5']!),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'bt0rs9xg' /* Enjoy.  */,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation6']!),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 3,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          await _model.pageViewController!
                                              .animateToPage(
                                            i,
                                            duration:
                                                const Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                          safeSetState(() {});
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 3.0,
                                          spacing: 8.0,
                                          radius: 16.0,
                                          dotWidth: 8.0,
                                          dotHeight: 8.0,
                                          dotColor: FlutterFlowTheme.of(context)
                                              .alternate,
                                          activeDotColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'WELCOME_PAGE_PAGE_NEXT_BTN_ON_TAP');
                                if (_model.pageViewCurrentIndex <= 1) {
                                  logFirebaseEvent('Button_page_view');
                                  await _model.pageViewController?.nextPage(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.ease,
                                  );
                                  logFirebaseEvent('Button_haptic_feedback');
                                  HapticFeedback.lightImpact();
                                } else {
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamed('AskUserAccount');

                                  logFirebaseEvent('Button_haptic_feedback');
                                  HapticFeedback.lightImpact();
                                }
                              },
                              text: FFLocalizations.of(context).getText(
                                'pulhj7tx' /* Next */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 55.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primaryText,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 4.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(50.0),
                                hoverColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () async {
                                logFirebaseEvent(
                                    'WELCOME_PAGE_PAGE_SKIP_BTN_ON_TAP');
                                logFirebaseEvent('Button_navigate_to');

                                context.goNamed('AskUserAccount');
                              },
                              text: FFLocalizations.of(context).getText(
                                '7nung07t' /* Skip */,
                              ),
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 55.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
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
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
