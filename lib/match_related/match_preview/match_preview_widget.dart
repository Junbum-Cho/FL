import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/season_overview_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/latest_components/latest_articles2/latest_articles2_widget.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import '/match_related/comment/comment_widget.dart';
import '/match_related/match_results/match_results_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'match_preview_model.dart';
export 'match_preview_model.dart';

class MatchPreviewWidget extends StatefulWidget {
  const MatchPreviewWidget({
    super.key,
    required this.schoolOne,
    required this.schoolTwo,
    required this.date,
    required this.time,
    required this.location,
    required this.schoolColor1,
    required this.schoolColor2,
    required this.sportsType,
    required this.commentNumber,
    required this.docRef,
    required this.dateForComment,
  });

  final String? schoolOne;
  final String? schoolTwo;
  final String? date;
  final DateTime? time;
  final String? location;
  final Color? schoolColor1;
  final Color? schoolColor2;
  final String? sportsType;
  final int? commentNumber;
  final String? docRef;
  final String? dateForComment;

  @override
  State<MatchPreviewWidget> createState() => _MatchPreviewWidgetState();
}

class _MatchPreviewWidgetState extends State<MatchPreviewWidget>
    with TickerProviderStateMixin {
  late MatchPreviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchPreviewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MatchPreview'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MATCH_PREVIEW_MatchPreview_ON_INIT_STATE');
      if (widget.schoolTwo == 'Avon Old Farms School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'AOF';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Choate Rosemary Hall') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'CHO';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'The Taft School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'TAF';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'The Ethel Walker School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'ETH';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'The Hotchkiss School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'HOT';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Kent School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'KEN';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Kingswood Oxford School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'KIN';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Loomis Chaffee School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'LOO';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Miss Porter\'s School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'POR';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Westminster School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'WES';
        safeSetState(() {});
      } else if (widget.schoolTwo == 'Trinity-Pawling School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolTwo1 = 'TRI';
        safeSetState(() {});
      }

      if (widget.schoolOne == 'Avon Old Farms School') {
        logFirebaseEvent('MatchPreview_update_page_state');
        _model.schoolOne = 'AOF';
        safeSetState(() {});
      }
      logFirebaseEvent('MatchPreview_update_page_state');
      _model.commentLength = widget.commentNumber?.toDouble();
      safeSetState(() {});
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        title: 'MatchPreview',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).accent1,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('MATCH_PREVIEW_arrow_back_ios_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                '${valueOrDefault<String>(
                  _model.schoolOne,
                  'NA',
                )} vs ${valueOrDefault<String>(
                  _model.schoolTwo1,
                  'NA',
                )}',
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
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.95,
                        height: 195.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: FlutterFlowTimer(
                                  initialTime:
                                      widget.time!.millisecondsSinceEpoch -
                                          getCurrentTimestamp
                                              .millisecondsSinceEpoch,
                                  getDisplayTime: (value) =>
                                      StopWatchTimer.getDisplayTime(value,
                                          milliSecond: false),
                                  controller: _model.timerController,
                                  updateStateInterval:
                                      const Duration(milliseconds: 1000),
                                  onChanged:
                                      (value, displayTime, shouldUpdate) {
                                    _model.timerMilliseconds = value;
                                    _model.timerValue = displayTime;
                                    if (shouldUpdate) safeSetState(() {});
                                  },
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineLarge
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Container(
                              width: 480.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MATCH_PREVIEW_Container_3s4t679g_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_haptic_feedback');
                                        HapticFeedback.lightImpact();
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          'EachSchoolProfile',
                                          queryParameters: {
                                            'schoolName': serializeParam(
                                              widget.schoolOne,
                                              ParamType.String,
                                            ),
                                            'schoolColor': serializeParam(
                                              widget.schoolColor1,
                                              ParamType.Color,
                                            ),
                                            'schoolSportsImage': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolOne ==
                                                      'Avon Old Farms School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g6ow0ue1qifu/Avon_Old_Farms_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Choate Rosemary Hall') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qhwz66ymclqx/Choate_Rosemary_Hall_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Ethel Walker School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m6s8srpgwtta/The_Ethel_Walker_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Hotchkiss School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/auapoysd5apr/The_Hotchkiss_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kent School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/psujq9gzwvl2/The_Kent_School_Sports_image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kingswood Oxford School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d1rf833qce16/The_Kingswood_Oxford_School_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Loomis Chaffee School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Miss Porter\'s School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Taft School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k07mepduof1o/The_Taft_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Trinity-Pawling School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/bn806x32yhsg/Trinity-Pawling_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Westminster School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uqte93lgcnxm/Westeminster_School_Sports_Image.webp';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  }
                                                }(),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                              ),
                                              ParamType.String,
                                            ),
                                            'schoolLogoImage': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolOne ==
                                                      'Avon Old Farms School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Choate Rosemary Hall') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Ethel Walker School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Hotchkiss School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kent School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kingswood Oxford School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Loomis Chaffee School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Miss Porter\'s School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Taft School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Trinity-Pawling School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Westminster School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  }
                                                }(),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                              ),
                                              ParamType.String,
                                            ),
                                            'schoolExplanation': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolOne ==
                                                      'Avon Old Farms School') {
                                                    return 'Est: 1927 - Avon, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Choate Rosemary Hall') {
                                                    return 'Est: 1890 - Wallingford, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Ethel Walker School') {
                                                    return 'Est: 1911 - Bushy Hill, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Hotchkiss School') {
                                                    return 'Est: 1891 - Interlaken, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kent School') {
                                                    return 'Est: 1906 - Macedonia, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Kingswood Oxford School') {
                                                    return 'Est: 1909 - Kingswood, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Loomis Chaffee School') {
                                                    return 'Est: 1874 - Batchelder, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Miss Porter\'s School') {
                                                    return 'Est: 1843 - Farmington, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'The Taft School') {
                                                    return 'Est: 1890 - Woodbury, CT';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Trinity-Pawling School') {
                                                    return 'Est: 1907 - Pawling, NY';
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Westminster School') {
                                                    return 'Est: 1888 - Simsbury, CT';
                                                  } else {
                                                    return 'Est: 1907 - Pawling, NY';
                                                  }
                                                }(),
                                                'Est: 1907 - Pawling, NY',
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 65.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 0.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: widget.schoolColor1,
                                                ),
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
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
                                                width: 70.0,
                                                height: 70.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 65.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: widget.schoolColor1,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            _model.schoolOne,
                                            'NA',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: () {
                                                  if (widget.schoolOne ==
                                                      'Choate Rosemary Hall') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else if (widget
                                                          .schoolOne ==
                                                      'Westminster School') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground;
                                                  }
                                                }(),
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Container(
                                      width: 90.0,
                                      height: 45.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.circular(20.0),
                                          bottomRight: Radius.circular(20.0),
                                          topLeft: Radius.circular(0.0),
                                          topRight: Radius.circular(0.0),
                                        ),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                              "Hm",
                                              widget.time,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            ),
                                            'NA',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 65.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: widget.schoolColor2,
                                    ),
                                    child: Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: AutoSizeText(
                                          valueOrDefault<String>(
                                            _model.schoolTwo1,
                                            'NA',
                                          ),
                                          minFontSize: 15.0,
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: () {
                                                  if (widget.schoolTwo ==
                                                      'Choate Rosemary Hall') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Westminster School') {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText;
                                                  } else {
                                                    return FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground;
                                                  }
                                                }(),
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MATCH_PREVIEW_Container_zphpeg4s_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_haptic_feedback');
                                        HapticFeedback.lightImpact();
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          'EachSchoolProfile',
                                          queryParameters: {
                                            'schoolName': serializeParam(
                                              widget.schoolTwo,
                                              ParamType.String,
                                            ),
                                            'schoolColor': serializeParam(
                                              widget.schoolColor2,
                                              ParamType.Color,
                                            ),
                                            'schoolSportsImage': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolTwo ==
                                                      'Avon Old Farms School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g6ow0ue1qifu/Avon_Old_Farms_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Choate Rosemary Hall') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qhwz66ymclqx/Choate_Rosemary_Hall_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Ethel Walker School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m6s8srpgwtta/The_Ethel_Walker_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Hotchkiss School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/auapoysd5apr/The_Hotchkiss_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kent School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/psujq9gzwvl2/The_Kent_School_Sports_image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kingswood Oxford School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d1rf833qce16/The_Kingswood_Oxford_School_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Loomis Chaffee School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Miss Porter\'s School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Taft School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k07mepduof1o/The_Taft_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Trinity-Pawling School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/bn806x32yhsg/Trinity-Pawling_School_Sports_Image.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Westminster School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uqte93lgcnxm/Westeminster_School_Sports_Image.webp';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  }
                                                }(),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                              ),
                                              ParamType.String,
                                            ),
                                            'schoolLogoImage': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolTwo ==
                                                      'Avon Old Farms School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Choate Rosemary Hall') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Ethel Walker School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Hotchkiss School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kent School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kingswood Oxford School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Loomis Chaffee School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Miss Porter\'s School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Taft School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Trinity-Pawling School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Westminster School') {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                  } else {
                                                    return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                  }
                                                }(),
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                              ),
                                              ParamType.String,
                                            ),
                                            'schoolExplanation': serializeParam(
                                              valueOrDefault<String>(
                                                () {
                                                  if (widget.schoolTwo ==
                                                      'Avon Old Farms School') {
                                                    return 'Est: 1927 - Avon, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Choate Rosemary Hall') {
                                                    return 'Est: 1890 - Wallingford, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Ethel Walker School') {
                                                    return 'Est: 1911 - Bushy Hill, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Hotchkiss School') {
                                                    return 'Est: 1891 - Interlaken, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kent School') {
                                                    return 'Est: 1906 - Macedonia, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Kingswood Oxford School') {
                                                    return 'Est: 1909 - Kingswood, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Loomis Chaffee School') {
                                                    return 'Est: 1874 - Batchelder, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Miss Porter\'s School') {
                                                    return 'Est: 1843 - Farmington, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'The Taft School') {
                                                    return 'Est: 1890 - Woodbury, CT';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Trinity-Pawling School') {
                                                    return 'Est: 1907 - Pawling, NY';
                                                  } else if (widget
                                                          .schoolTwo ==
                                                      'Westminster School') {
                                                    return 'Est: 1888 - Simsbury, CT';
                                                  } else {
                                                    return 'Est: 1907 - Pawling, NY';
                                                  }
                                                }(),
                                                'Est: 1907 - Pawling, NY',
                                              ),
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: 65.0,
                                        height: 65.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Container(
                                                width: 30.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: widget.schoolColor2,
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: CachedNetworkImage(
                                                  fadeInDuration: const Duration(
                                                      milliseconds: 500),
                                                  fadeOutDuration: const Duration(
                                                      milliseconds: 500),
                                                  imageUrl:
                                                      valueOrDefault<String>(
                                                    () {
                                                      if (widget.schoolTwo ==
                                                          'Avon Old Farms School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Choate Rosemary Hall') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'The Ethel Walker School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'The Hotchkiss School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Kent School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Kingswood Oxford School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Loomis Chaffee School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Miss Porter\'s School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'The Taft School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Trinity-Pawling School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                      } else if (widget
                                                              .schoolTwo ==
                                                          'Westminster School') {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                                      } else {
                                                        return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                      }
                                                    }(),
                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png',
                                                  ),
                                                  width: 70.0,
                                                  height: 70.0,
                                                  fit: BoxFit.contain,
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.date,
                                      'NA',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget.location,
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Container(
                        width: 533.0,
                        height: () {
                          if (_model.tabBarCurrentIndex == 0) {
                            return 900.0;
                          } else if (_model.tabBarCurrentIndex == 1) {
                            return 800.0;
                          } else if ((_model.tabBarCurrentIndex == 2) &&
                              (widget.commentNumber! < 2)) {
                            return 590.0;
                          } else if ((_model.tabBarCurrentIndex == 2) &&
                              (widget.commentNumber! > 1)) {
                            return (220 + 160.0 * (_model.commentLength!));
                          } else {
                            return 600.0;
                          }
                        }(),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
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
                                      fontSize: 15.0,
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
                                    FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                borderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                unselectedBorderColor:
                                    FlutterFlowTheme.of(context).alternate,
                                borderWidth: 1.5,
                                borderRadius: 10.0,
                                elevation: 0.0,
                                buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                padding: const EdgeInsets.all(16.0),
                                tabs: [
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      'doxu6qks' /* Related */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '3v436616' /* Stats */,
                                    ),
                                  ),
                                  Tab(
                                    text: FFLocalizations.of(context).getText(
                                      '21zzak5o' /* More */,
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
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'ppz7qh1r' /* Related Videos */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 26.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          wrapWithModel(
                                            model: _model.latestVideoModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const LatestVideoWidget(
                                              videoTitle:
                                                  'AOF VS Choate: Varsity Soccer 6/01: The PLAN',
                                              videoLength: 2,
                                              videoImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ek5iv7p043nq/Avon_Old_Farms_School_Profile_Image.jpg',
                                            ),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '2et59a2g' /* Related News */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 26.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        builder: (context) => StreamBuilder<
                                            List<AllArticlesRecord>>(
                                          stream: queryAllArticlesRecord(
                                            queryBuilder: (allArticlesRecord) =>
                                                allArticlesRecord
                                                    .where(
                                                      'authorSchool',
                                                      isEqualTo: valueOrDefault(
                                                          currentUserDocument
                                                              ?.userSchool,
                                                          ''),
                                                    )
                                                    .orderBy('Timestamp',
                                                        descending: true),
                                            limit: 2,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitThreeBounce(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<AllArticlesRecord>
                                                columnAllArticlesRecordList =
                                                snapshot.data!;

                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: List.generate(
                                                  columnAllArticlesRecordList
                                                      .length, (columnIndex) {
                                                final columnAllArticlesRecord =
                                                    columnAllArticlesRecordList[
                                                        columnIndex];
                                                return LatestArticles2Widget(
                                                  key: Key(
                                                      'Keyud4_${columnIndex}_of_${columnAllArticlesRecordList.length}'),
                                                  title: columnAllArticlesRecord
                                                      .title,
                                                  author:
                                                      columnAllArticlesRecord
                                                          .author,
                                                  image1:
                                                      columnAllArticlesRecord
                                                          .image,
                                                  timeStamp:
                                                      columnAllArticlesRecord
                                                          .timestamp!,
                                                  image2:
                                                      columnAllArticlesRecord
                                                          .image2,
                                                  image3:
                                                      columnAllArticlesRecord
                                                          .image3,
                                                  subtitle1:
                                                      columnAllArticlesRecord
                                                          .subtitle1,
                                                  subtitle2:
                                                      columnAllArticlesRecord
                                                          .subtitle2,
                                                  subtitle3:
                                                      columnAllArticlesRecord
                                                          .subtitle3,
                                                  content1:
                                                      columnAllArticlesRecord
                                                          .content1,
                                                  content2:
                                                      columnAllArticlesRecord
                                                          .content2,
                                                  content3:
                                                      columnAllArticlesRecord
                                                          .content3,
                                                );
                                              }).addToStart(
                                                  const SizedBox(height: 10.0)),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              '4kjdrbpv' /* Previous Matches */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  fontSize: 25.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: StreamBuilder<
                                                List<ResultsRecord>>(
                                              stream: queryResultsRecord(
                                                queryBuilder: (resultsRecord) =>
                                                    resultsRecord
                                                        .where(
                                                          'sportsType',
                                                          isEqualTo:
                                                              valueOrDefault<
                                                                  String>(
                                                            widget.sportsType,
                                                            'NA',
                                                          ),
                                                        )
                                                        .orderBy('matchDate',
                                                            descending: true),
                                                limit: 2,
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
                                                List<ResultsRecord>
                                                    columnResultsRecordList =
                                                    snapshot.data!;

                                                return Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      columnResultsRecordList
                                                          .length,
                                                      (columnIndex) {
                                                    final columnResultsRecord =
                                                        columnResultsRecordList[
                                                            columnIndex];
                                                    return MatchResultsWidget(
                                                      key: Key(
                                                          'Key33o_${columnIndex}_of_${columnResultsRecordList.length}'),
                                                      sportsName:
                                                          columnResultsRecord
                                                              .sportsType,
                                                      schoolScore1:
                                                          columnResultsRecord
                                                              .schoolOneScore,
                                                      schoolScore2:
                                                          columnResultsRecord
                                                              .schoolTwoScore,
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
                                                              'Ethel Walker School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                          } else if (FFAppState()
                                                                  .schoolName ==
                                                              'The Hotchkiss School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                          } else if (FFAppState()
                                                                  .schoolName ==
                                                              'Kent School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                          } else if (FFAppState()
                                                                  .schoolName ==
                                                              'Kingswood Oxford School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                          } else if (FFAppState()
                                                                  .schoolName ==
                                                              'Loomis Chaffee School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
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
                                                      schoolTwoName:
                                                          valueOrDefault<
                                                              String>(
                                                        () {
                                                          if (columnResultsRecord
                                                                  .opponent ==
                                                              'Avon Old Farms School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Choate Rosemary Hall') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'The Ethel Walker School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'The Hotchkiss School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Kent School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Kingswood Oxford School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Loomis Chaffee School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Miss Porter\'s School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'The Taft School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Trinity-Pawling School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                          } else if (columnResultsRecord
                                                                  .opponent ==
                                                              'Westminster School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                          } else {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          }
                                                        }(),
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG',
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                'hufyekyp' /* More Articles */,
                                              ),
                                              icon: Icon(
                                                Icons.arrow_forward,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 15.0,
                                              ),
                                              options: FFButtonOptions(
                                                width: 357.0,
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '4rqcy4xk' /* This Season Overview */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 25.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.seasonOverviewModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SeasonOverviewWidget(
                                                num1: 3.0,
                                                num2: 2.0,
                                                text: 'Won',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.seasonOverviewModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SeasonOverviewWidget(
                                                num1: 1.0,
                                                num2: 1.0,
                                                text: 'Draw',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.seasonOverviewModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SeasonOverviewWidget(
                                                num1: 2.0,
                                                num2: 3.0,
                                                text: 'Lost',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.seasonOverviewModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: const SeasonOverviewWidget(
                                                num1: 2.4,
                                                num2: 2.0,
                                                text:
                                                    'Avg scores obtained per match',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 400.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(12.0),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 8.0, 12.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 15.0, 0.0, 15.0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '09nthsoz' /* Comments */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ].divide(const SizedBox(width: 8.0)),
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                        ),
                                        FutureBuilder<
                                            List<CommentsSchedulesRecord>>(
                                          future:
                                              queryCommentsSchedulesRecordOnce(
                                            queryBuilder:
                                                (commentsSchedulesRecord) =>
                                                    commentsSchedulesRecord
                                                        .where(
                                              'pageDocRef',
                                              isEqualTo: widget.docRef,
                                            ),
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitThreeBounce(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<CommentsSchedulesRecord>
                                                stackCommentsSchedulesRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final stackCommentsSchedulesRecord =
                                                stackCommentsSchedulesRecordList
                                                        .isNotEmpty
                                                    ? stackCommentsSchedulesRecordList
                                                        .first
                                                    : null;

                                            return Stack(
                                              alignment: const AlignmentDirectional(
                                                  1.0, 1.0),
                                              children: [
                                                SizedBox(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    focusNode: _model
                                                        .textFieldFocusNode,
                                                    autofocus: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '1cnjzfr2' /* Leave a comment here... */,
                                                      ),
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      alignLabelWithHint: true,
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                      enabledBorder:
                                                          InputBorder.none,
                                                      focusedBorder:
                                                          InputBorder.none,
                                                      errorBorder:
                                                          InputBorder.none,
                                                      focusedErrorBorder:
                                                          InputBorder.none,
                                                      contentPadding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  8.0,
                                                                  32.0,
                                                                  16.0),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    maxLines: 8,
                                                    minLines: 4,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, 1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                12.0, 12.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'MATCH_PREVIEW_PAGE_SEND_BTN_ON_TAP');
                                                        if (_model.textController
                                                                    .text !=
                                                                '') {
                                                          logFirebaseEvent(
                                                              'Button_backend_call');

                                                          await CommentsSchedulesRecord
                                                              .createDoc(
                                                            stackCommentsSchedulesRecord!
                                                                .parentReference,
                                                            id: '${widget.docRef} - ${random_data.randomInteger(1, 1000).toString()}',
                                                          ).set(
                                                              createCommentsSchedulesRecordData(
                                                            commentContent: _model
                                                                .textController
                                                                .text,
                                                            pageDocRef:
                                                                widget.docRef,
                                                            commenterName:
                                                                currentUserDisplayName,
                                                            commeterImage:
                                                                currentUserPhoto,
                                                            commentTimestamp:
                                                                getCurrentTimestamp,
                                                          ));
                                                          logFirebaseEvent(
                                                              'Button_reset_form_fields');
                                                          safeSetState(() {
                                                            _model
                                                                .textController
                                                                ?.clear();
                                                          });
                                                          logFirebaseEvent(
                                                              'Button_update_page_state');
                                                          _model.commentLength =
                                                              _model.commentLength! +
                                                                  1.0;
                                                          safeSetState(() {});
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Button_alert_dialog');
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return WebViewAware(
                                                                child:
                                                                    AlertDialog(
                                                                  title: const Text(
                                                                      'Write Something!'),
                                                                  content: const Text(
                                                                      'The comment cannot be empty! Thank you.'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'xxo9iwol' /* Send */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        height: 36.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 0.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                        StreamBuilder<
                                            List<CommentsSchedulesRecord>>(
                                          stream: queryCommentsSchedulesRecord(
                                            queryBuilder:
                                                (commentsSchedulesRecord) =>
                                                    commentsSchedulesRecord
                                                        .where(
                                              'pageDocRef',
                                              isEqualTo: widget.docRef,
                                            ),
                                            limit: 5,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitThreeBounce(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<CommentsSchedulesRecord>
                                                listViewCommentsSchedulesRecordList =
                                                snapshot.data!;

                                            return ListView.separated(
                                              padding: const EdgeInsets.fromLTRB(
                                                0,
                                                12.0,
                                                0,
                                                12.0,
                                              ),
                                              primary: false,
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount:
                                                  listViewCommentsSchedulesRecordList
                                                      .length,
                                              separatorBuilder: (_, __) =>
                                                  const SizedBox(height: 12.0),
                                              itemBuilder:
                                                  (context, listViewIndex) {
                                                final listViewCommentsSchedulesRecord =
                                                    listViewCommentsSchedulesRecordList[
                                                        listViewIndex];
                                                return CommentWidget(
                                                  key: Key(
                                                      'Keyl9h_${listViewIndex}_of_${listViewCommentsSchedulesRecordList.length}'),
                                                  commenterName:
                                                      listViewCommentsSchedulesRecord
                                                          .commenterName,
                                                  commentContent:
                                                      listViewCommentsSchedulesRecord
                                                          .commentContent,
                                                  timeAgo: dateTimeFormat(
                                                    "relative",
                                                    listViewCommentsSchedulesRecord
                                                        .commentTimestamp!,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  profileImage:
                                                      listViewCommentsSchedulesRecord
                                                          .commeterImage,
                                                  commentTimestamp:
                                                      listViewCommentsSchedulesRecord
                                                          .commentTimestamp!,
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ].divide(const SizedBox(height: 4.0)),
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
          ),
        ));
  }
}
