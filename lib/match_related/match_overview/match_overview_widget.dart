import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/student_score_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import '/match_related/comment/comment_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'match_overview_model.dart';
export 'match_overview_model.dart';

class MatchOverviewWidget extends StatefulWidget {
  const MatchOverviewWidget({
    super.key,
    required this.sportsType,
    required this.schoolOneName,
    required this.schoolNameTwo,
    required this.schoolOneScore,
    required this.schoolTwoScore,
    required this.matchDate,
    required this.matchLocation,
    required this.schoolOneImage,
    required this.schoolTwoImage,
    required this.schoolOneColor,
    required this.schooltwoColor,
    required this.docRef,
    required this.commentNumber,
    this.bestPlayers,
  });

  final String? sportsType;
  final String? schoolOneName;
  final String? schoolNameTwo;
  final int? schoolOneScore;
  final int? schoolTwoScore;
  final String? matchDate;
  final String? matchLocation;
  final String? schoolOneImage;
  final String? schoolTwoImage;
  final Color? schoolOneColor;
  final Color? schooltwoColor;
  final String? docRef;
  final int? commentNumber;
  final List<String>? bestPlayers;

  @override
  State<MatchOverviewWidget> createState() => _MatchOverviewWidgetState();
}

class _MatchOverviewWidgetState extends State<MatchOverviewWidget>
    with TickerProviderStateMixin {
  late MatchOverviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MatchOverviewModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MatchOverview'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('MATCH_OVERVIEW_MatchOverview_ON_INIT_STA');
      if (widget.schoolNameTwo == 'Avon Old Farms School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'AOF';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Choate Rosemary Hall') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'CHO';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'The Taft School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'TAFT';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'The Ethel Walker School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'ETH';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'The Hotchkiss School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'HOT';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Kent School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'KENT';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Kingswood Oxford School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'KIN';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Loomis Chaffee School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'LOO';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Miss Porter\'s School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'POR';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Westminster School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'WEST';
        safeSetState(() {});
      } else if (widget.schoolNameTwo == 'Trinity-Pawling School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolTwoNameShorten = 'TRI';
        safeSetState(() {});
      }

      if (widget.schoolOneName == 'Avon Old Farms School') {
        logFirebaseEvent('MatchOverview_update_page_state');
        _model.schoolOneNameShorten = 'AOF';
        safeSetState(() {});
      }
      logFirebaseEvent('MatchOverview_update_page_state');
      _model.commentLength = widget.commentNumber!.toDouble();
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
    return Title(
        title: 'MatchOverview',
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
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('MATCH_OVERVIEW_chevron_left_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                '${valueOrDefault<String>(
                  _model.schoolOneNameShorten,
                  'NA',
                )} vs ${valueOrDefault<String>(
                  _model.schoolTwoNameShorten,
                  'NA',
                )}',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.95,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.sportsType,
                                    'NA',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 25.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
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
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'MATCH_OVERVIEW_Container_lhqsyu7j_ON_TAP');
                                          logFirebaseEvent(
                                              'Container_haptic_feedback');
                                          HapticFeedback.lightImpact();
                                          logFirebaseEvent(
                                              'Container_navigate_to');

                                          context.pushNamed(
                                            'EachSchoolProfile',
                                            queryParameters: {
                                              'schoolName': serializeParam(
                                                widget.schoolOneName,
                                                ParamType.String,
                                              ),
                                              'schoolColor': serializeParam(
                                                widget.schoolOneColor,
                                                ParamType.Color,
                                              ),
                                              'schoolSportsImage':
                                                  serializeParam(
                                                valueOrDefault<String>(
                                                  () {
                                                    if (widget.schoolOneName ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g6ow0ue1qifu/Avon_Old_Farms_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qhwz66ymclqx/Choate_Rosemary_Hall_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m6s8srpgwtta/The_Ethel_Walker_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/auapoysd5apr/The_Hotchkiss_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/psujq9gzwvl2/The_Kent_School_Sports_image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d1rf833qce16/The_Kingswood_Oxford_School_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k07mepduof1o/The_Taft_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/bn806x32yhsg/Trinity-Pawling_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
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
                                                    if (widget.schoolOneName ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else if (widget
                                                            .schoolOneName ==
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
                                              'schoolExplanation':
                                                  serializeParam(
                                                valueOrDefault<String>(
                                                  () {
                                                    if (widget.schoolOneName ==
                                                        'Avon Old Farms School') {
                                                      return 'Est: 1927 - Avon, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Choate Rosemary Hall') {
                                                      return 'Est: 1890 - Wallingford, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Ethel Walker School') {
                                                      return 'Est: 1911 - Bushy Hill, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Hotchkiss School') {
                                                      return 'Est: 1891 - Interlaken, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kent School') {
                                                      return 'Est: 1906 - Macedonia, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Kingswood Oxford School') {
                                                      return 'Est: 1909 - Kingswood, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Loomis Chaffee School') {
                                                      return 'Est: 1874 - Batchelder, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Miss Porter\'s School') {
                                                      return 'Est: 1843 - Farmington, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'The Taft School') {
                                                      return 'Est: 1890 - Woodbury, CT';
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Trinity-Pawling School') {
                                                      return 'Est: 1907 - Pawling, NY';
                                                    } else if (widget
                                                            .schoolOneName ==
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
                                          width: 70.0,
                                          height: 70.0,
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
                                                  width: 45.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        widget.schoolOneColor,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: const Duration(
                                                        milliseconds: 500),
                                                    fadeOutDuration: const Duration(
                                                        milliseconds: 500),
                                                    imageUrl:
                                                        valueOrDefault<String>(
                                                      widget.schoolOneImage,
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                    ),
                                                    width: 65.0,
                                                    height: 65.0,
                                                    fit: BoxFit.contain,
                                                    alignment:
                                                        const Alignment(0.0, 0.0),
                                                  ),
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
                                        color: widget.schoolOneColor,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              _model.schoolOneNameShorten,
                                              'NA',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: () {
                                                    if (widget.schoolOneName ==
                                                        'Choate Rosemary Hall') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else if (widget
                                                            .schoolOneName ==
                                                        'Westminster School') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
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
                                          0.0, 19.0, 0.0, 0.0),
                                      child: Container(
                                        width: 85.0,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          borderRadius: const BorderRadius.only(
                                            bottomLeft: Radius.circular(20.0),
                                            bottomRight: Radius.circular(20.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            width: 0.5,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, -1.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 8.0, 5.0, 0.0),
                                            child: AutoSizeText(
                                              '${valueOrDefault<String>(
                                                widget.schoolOneScore
                                                    ?.toString(),
                                                '0',
                                              )} - ${valueOrDefault<String>(
                                                widget.schoolTwoScore
                                                    ?.toString(),
                                                '0',
                                              )}',
                                              maxLines: 1,
                                              minFontSize: 10.0,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineLarge
                                                  .override(
                                                    fontFamily: 'Outfit',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    fontSize: 30.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 65.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: widget.schooltwoColor,
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: AutoSizeText(
                                            valueOrDefault<String>(
                                              _model.schoolTwoNameShorten,
                                              'NA',
                                            ),
                                            minFontSize: 15.0,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: () {
                                                    if (widget.schoolNameTwo ==
                                                        'Choate Rosemary Hall') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Westminster School') {
                                                      return FlutterFlowTheme
                                                              .of(context)
                                                          .primaryText;
                                                    } else {
                                                      return FlutterFlowTheme
                                                              .of(context)
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
                                              'MATCH_OVERVIEW_Container_6ldzusjp_ON_TAP');
                                          logFirebaseEvent(
                                              'Container_haptic_feedback');
                                          HapticFeedback.lightImpact();
                                          logFirebaseEvent(
                                              'Container_navigate_to');

                                          context.pushNamed(
                                            'EachSchoolProfile',
                                            queryParameters: {
                                              'schoolName': serializeParam(
                                                widget.schoolNameTwo,
                                                ParamType.String,
                                              ),
                                              'schoolColor': serializeParam(
                                                () {
                                                  if (widget.schoolNameTwo ==
                                                      'Avon Old Farms School') {
                                                    return const Color(0xFF800000);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Choate Rosemary Hall') {
                                                    return const Color(0xFFFFD700);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'The Taft School') {
                                                    return const Color(0xFF00356B);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'The Ethel Walker School') {
                                                    return const Color(0xFF800080);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'The Hotchkiss School') {
                                                    return const Color(0xFF00356B);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Kent School') {
                                                    return const Color(0xFF0000FF);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Kingswood Oxford School') {
                                                    return const Color(0xFFDC143C);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Loomis Chaffee School') {
                                                    return const Color(0xFF800000);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Miss Porter\'s School') {
                                                    return const Color(0xFF008000);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Westminster School') {
                                                    return const Color(0xFFFFD700);
                                                  } else if (widget
                                                          .schoolNameTwo ==
                                                      'Trinity-Pawling School') {
                                                    return const Color(0xFF0000FF);
                                                  } else {
                                                    return const Color(0x00000000);
                                                  }
                                                }(),
                                                ParamType.Color,
                                              ),
                                              'schoolSportsImage':
                                                  serializeParam(
                                                valueOrDefault<String>(
                                                  () {
                                                    if (widget.schoolNameTwo ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g6ow0ue1qifu/Avon_Old_Farms_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qhwz66ymclqx/Choate_Rosemary_Hall_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m6s8srpgwtta/The_Ethel_Walker_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/auapoysd5apr/The_Hotchkiss_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/psujq9gzwvl2/The_Kent_School_Sports_image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d1rf833qce16/The_Kingswood_Oxford_School_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k07mepduof1o/The_Taft_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/bn806x32yhsg/Trinity-Pawling_School_Sports_Image.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
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
                                                    if (widget.schoolNameTwo ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Hotchkiss School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/8149panb076w/Kent_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else if (widget
                                                            .schoolNameTwo ==
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
                                              'schoolExplanation':
                                                  serializeParam(
                                                valueOrDefault<String>(
                                                  () {
                                                    if (widget.schoolNameTwo ==
                                                        'Avon Old Farms School') {
                                                      return 'Est: 1927 - Avon, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Choate Rosemary Hall') {
                                                      return 'Est: 1890 - Wallingford, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Ethel Walker School') {
                                                      return 'Est: 1911 - Bushy Hill, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Hotchkiss School') {
                                                      return 'Est: 1891 - Interlaken, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kent School') {
                                                      return 'Est: 1906 - Macedonia, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Kingswood Oxford School') {
                                                      return 'Est: 1909 - Kingswood, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Loomis Chaffee School') {
                                                      return 'Est: 1874 - Batchelder, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Miss Porter\'s School') {
                                                      return 'Est: 1843 - Farmington, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'The Taft School') {
                                                      return 'Est: 1890 - Woodbury, CT';
                                                    } else if (widget
                                                            .schoolNameTwo ==
                                                        'Trinity-Pawling School') {
                                                      return 'Est: 1907 - Pawling, NY';
                                                    } else if (widget
                                                            .schoolNameTwo ==
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
                                          width: 70.0,
                                          height: 70.0,
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
                                                  width: 45.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        widget.schooltwoColor,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: const Duration(
                                                        milliseconds: 500),
                                                    fadeOutDuration: const Duration(
                                                        milliseconds: 500),
                                                    imageUrl:
                                                        valueOrDefault<String>(
                                                      widget.schoolTwoImage,
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png',
                                                    ),
                                                    width: 65.0,
                                                    height: 65.0,
                                                    fit: BoxFit.contain,
                                                    alignment:
                                                        const Alignment(0.0, 0.0),
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
                                        widget.matchDate,
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
                                      widget.matchLocation,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final bestPlayers =
                                                widget.bestPlayers?.toList() ??
                                                    [];

                                            return Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: List.generate(
                                                  bestPlayers.length,
                                                  (bestPlayersIndex) {
                                                final bestPlayersItem =
                                                    bestPlayers[
                                                        bestPlayersIndex];
                                                return StudentScoreWidget(
                                                  key: Key(
                                                      'Key11l_${bestPlayersIndex}_of_${bestPlayers.length}'),
                                                  goalType: 'Scorer',
                                                  goalIcon: FaIcon(
                                                    FontAwesomeIcons.trophy,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent1,
                                                  ),
                                                  studentName: bestPlayersItem,
                                                );
                                              }),
                                            );
                                          },
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
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: () {
                          if (_model.tabBarCurrentIndex == 0) {
                            return 600.0;
                          } else if (_model.tabBarCurrentIndex == 1) {
                            return 800.0;
                          } else if (_model.tabBarCurrentIndex == 2) {
                            return (250 + (widget.commentNumber!) * 160)
                                .toDouble();
                          } else {
                            return 600.0;
                          }
                        }(),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: FutureBuilder<int>(
                            future: queryCommentsSchedulesRecordCount(
                              queryBuilder: (commentsSchedulesRecord) =>
                                  commentsSchedulesRecord.where(
                                'pageDocRef',
                                isEqualTo: widget.docRef,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              int tabBarCount = snapshot.data!;

                              return Column(
                                children: [
                                  Align(
                                    alignment: const Alignment(0.0, 0),
                                    child: FlutterFlowButtonTabBar(
                                      useToggleButtonStyle: true,
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
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      unselectedBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).primary,
                                      unselectedBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                      borderWidth: 2.0,
                                      borderRadius: 16.0,
                                      elevation: 0.0,
                                      buttonMargin:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              8.0, 0.0, 8.0, 0.0),
                                      padding: const EdgeInsets.all(4.0),
                                      tabs: [
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'vbykdern' /* Overview */,
                                          ),
                                        ),
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            'dsfami68' /* Official */,
                                          ),
                                        ),
                                        Tab(
                                          text: FFLocalizations.of(context)
                                              .getText(
                                            '7mkzv01t' /* Community */,
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
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 10.0, 0.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '1z6dl061' /* Match Highlights  */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        fontSize: 28.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                wrapWithModel(
                                                  model:
                                                      _model.latestVideoModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const LatestVideoWidget(
                                                    videoTitle:
                                                        'AOF VS Choate 6/01 Varsity Soccer Match Highlights',
                                                    videoLength: 2,
                                                    videoImage:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uqte93lgcnxm/Westeminster_School_Sports_Image.webp',
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model:
                                                      _model.latestVideoModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: const LatestVideoWidget(
                                                    videoTitle:
                                                        'AOF VS Choate Varsity Soccer Stunning Victory 4-2; Highlights',
                                                    videoLength: 3,
                                                    videoImage:
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6u5gvyaitnlk/Avon_Old_Farms_Soccer_Image_Background_Removed.png',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'met4rxa3' /* Tab View 2 */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Container(
                                            width: 400.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 8.0, 12.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      15.0),
                                                          child: Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              '1jshr5zd' /* Comments */,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 8.0)),
                                                  ),
                                                ),
                                                Divider(
                                                  height: 1.0,
                                                  thickness: 1.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                FutureBuilder<
                                                    List<
                                                        CommentsResultsRecord>>(
                                                  future:
                                                      queryCommentsResultsRecordOnce(
                                                    queryBuilder:
                                                        (commentsResultsRecord) =>
                                                            commentsResultsRecord
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
                                                          child:
                                                              SpinKitThreeBounce(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CommentsResultsRecord>
                                                        stackCommentsResultsRecordList =
                                                        snapshot.data!;
                                                    // Return an empty Container when the item does not exist.
                                                    if (snapshot
                                                        .data!.isEmpty) {
                                                      return Container();
                                                    }
                                                    final stackCommentsResultsRecord =
                                                        stackCommentsResultsRecordList
                                                                .isNotEmpty
                                                            ? stackCommentsResultsRecordList
                                                                .first
                                                            : null;

                                                    return Stack(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              1.0, 1.0),
                                                      children: [
                                                        SizedBox(
                                                          width:
                                                              double.infinity,
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController,
                                                            focusNode: _model
                                                                .textFieldFocusNode,
                                                            autofocus: true,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                '7gg3cfzd' /* Leave a comment here... */,
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
                                                              alignLabelWithHint:
                                                                  true,
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
                                                                  InputBorder
                                                                      .none,
                                                              focusedBorder:
                                                                  InputBorder
                                                                      .none,
                                                              errorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              focusedErrorBorder:
                                                                  InputBorder
                                                                      .none,
                                                              contentPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          32.0,
                                                                          16.0),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            maxLines: 8,
                                                            minLines: 4,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            validator: _model
                                                                .textControllerValidator
                                                                .asValidator(
                                                                    context),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  1.0, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        12.0,
                                                                        12.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'MATCH_OVERVIEW_PAGE_SEND_BTN_ON_TAP');
                                                                if (_model.textController
                                                                            .text !=
                                                                        '') {
                                                                  logFirebaseEvent(
                                                                      'Button_backend_call');

                                                                  await CommentsResultsRecord
                                                                      .createDoc(
                                                                    stackCommentsResultsRecord!
                                                                        .parentReference,
                                                                    id: '${widget.docRef} - ${random_data.randomInteger(0, 1000).toString()}',
                                                                  ).set(
                                                                      createCommentsResultsRecordData(
                                                                    commentContent:
                                                                        _model
                                                                            .textController
                                                                            .text,
                                                                    commenterName:
                                                                        currentUserDisplayName,
                                                                    commeterImage:
                                                                        currentUserPhoto,
                                                                    pageDocRef:
                                                                        widget
                                                                            .docRef,
                                                                    commentTimestamp:
                                                                        getCurrentTimestamp,
                                                                  ));
                                                                  logFirebaseEvent(
                                                                      'Button_reset_form_fields');
                                                                  safeSetState(
                                                                      () {
                                                                    _model
                                                                        .textController
                                                                        ?.clear();
                                                                  });
                                                                  logFirebaseEvent(
                                                                      'Button_update_page_state');
                                                                  _model.commentLength =
                                                                      _model.commentLength +
                                                                          1.0;
                                                                  safeSetState(
                                                                      () {});
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'Button_alert_dialog');
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return WebViewAware(
                                                                        child:
                                                                            AlertDialog(
                                                                          title:
                                                                              const Text('Write Something!'),
                                                                          content:
                                                                              const Text('The comment cannot be empty! Thank you.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: const Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );
                                                                    },
                                                                  );
                                                                }
                                                              },
                                                              text: FFLocalizations
                                                                      .of(context)
                                                                  .getText(
                                                                'ozq7zkw1' /* Send */,
                                                              ),
                                                              options:
                                                                  FFButtonOptions(
                                                                height: 36.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
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
                                                                borderSide:
                                                                    const BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ),
                                                StreamBuilder<
                                                    List<
                                                        CommentsResultsRecord>>(
                                                  stream:
                                                      queryCommentsResultsRecord(
                                                    queryBuilder:
                                                        (commentsResultsRecord) =>
                                                            commentsResultsRecord
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
                                                          child:
                                                              SpinKitThreeBounce(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 50.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    List<CommentsResultsRecord>
                                                        listViewCommentsResultsRecordList =
                                                        snapshot.data!;

                                                    return ListView.separated(
                                                      padding:
                                                          const EdgeInsets.fromLTRB(
                                                        0,
                                                        12.0,
                                                        0,
                                                        12.0,
                                                      ),
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          listViewCommentsResultsRecordList
                                                              .length,
                                                      separatorBuilder:
                                                          (_, __) => const SizedBox(
                                                              height: 12.0),
                                                      itemBuilder: (context,
                                                          listViewIndex) {
                                                        final listViewCommentsResultsRecord =
                                                            listViewCommentsResultsRecordList[
                                                                listViewIndex];
                                                        return wrapWithModel(
                                                          model: _model
                                                              .commentModels
                                                              .getModel(
                                                            widget.docRef!,
                                                            listViewIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child: CommentWidget(
                                                            key: Key(
                                                              'Keyz99_${widget.docRef!}',
                                                            ),
                                                            commenterName:
                                                                listViewCommentsResultsRecord
                                                                    .commenterName,
                                                            commentContent:
                                                                listViewCommentsResultsRecord
                                                                    .commentContent,
                                                            timeAgo:
                                                                dateTimeFormat(
                                                              "relative",
                                                              listViewCommentsResultsRecord
                                                                  .commentTimestamp!,
                                                              locale: FFLocalizations
                                                                      .of(context)
                                                                  .languageCode,
                                                            ),
                                                            profileImage:
                                                                listViewCommentsResultsRecord
                                                                    .commeterImage,
                                                            commentTimestamp:
                                                                listViewCommentsResultsRecord
                                                                    .commentTimestamp!,
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ].divide(const SizedBox(height: 4.0)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
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
