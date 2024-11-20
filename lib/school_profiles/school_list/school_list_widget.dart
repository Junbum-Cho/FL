import '/components/each_school_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'school_list_model.dart';
export 'school_list_model.dart';

class SchoolListWidget extends StatefulWidget {
  const SchoolListWidget({super.key});

  @override
  State<SchoolListWidget> createState() => _SchoolListWidgetState();
}

class _SchoolListWidgetState extends State<SchoolListWidget> {
  late SchoolListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SchoolListModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'schoolList'});
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
        title: 'schoolList',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'SCHOOL_LIST_PAGE_Icon_me5vkd12_ON_TAP');
                            logFirebaseEvent('Icon_navigate_back');
                            context.safePop();
                          },
                          child: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 30.0,
                          ),
                        ),
                      ),
                    ),
                    ListView(
                      padding: const EdgeInsets.fromLTRB(
                        0,
                        10.0,
                        0,
                        20.0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              15.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'nll0pxcs' /* Founders League Schools  */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  fontSize: 28.0,
                                  letterSpacing: 0.0,
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
                                'SCHOOL_LIST_Container_vxyhkscn_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Avon Old Farms School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF800000),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/g6ow0ue1qifu/Avon_Old_Farms_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1927 - Avon, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel1,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                              schoolName: 'Avon Old Farms School',
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
                                'SCHOOL_LIST_Container_8m0kaqkx_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Choate Rosemary Hall',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFFFFD700),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/qhwz66ymclqx/Choate_Rosemary_Hall_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1890 - Wallingford, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel2,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png',
                              schoolName: 'Choate Rosemary Hall',
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
                                'SCHOOL_LIST_Container_a2qaz8im_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'The Taft School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF00356B),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k07mepduof1o/The_Taft_School_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1890 - Woodbury, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel3,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png',
                              schoolName: 'The Taft School',
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
                                'SCHOOL_LIST_Container_1b91nf23_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'The Ethel Walker School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF800080),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/m6s8srpgwtta/The_Ethel_Walker_School_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1911 - Bushy Hill, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel4,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png',
                              schoolName: 'The Ethel Walker School',
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
                                'SCHOOL_LIST_Container_jenqscnr_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'The Hotchkiss School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF00356B),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/auapoysd5apr/The_Hotchkiss_School_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1891 - Interlaken, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel5,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png',
                              schoolName: 'The Hotchkiss School',
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
                                'SCHOOL_LIST_Container_lmdcwo9q_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Kent School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF0000FF),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/psujq9gzwvl2/The_Kent_School_Sports_image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1906 - Macedonia, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel6,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG',
                              schoolName: 'Kent School',
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
                                'SCHOOL_LIST_Container_78xesej9_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Kingswood Oxford School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFFDC143C),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/d1rf833qce16/The_Kingswood_Oxford_School_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1909 - Kingswood, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel7,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png',
                              schoolName: 'Kingswood Oxford School',
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
                                'SCHOOL_LIST_Container_9dvmlhi5_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Loomis Chaffee School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF800000),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7nsjsejtouyw/Loomis_Logo_Background_removed.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1874 - Batchelder, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel8,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png',
                              schoolName: 'Loomis Chaffee School',
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
                                'SCHOOL_LIST_Container_xxh7byme_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Miss Porter\'s School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF008000),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1843 - Farmington, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel9,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png',
                              schoolName: 'Miss Porter\'s School',
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
                                'SCHOOL_LIST_Container_iunt7wcl_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Westminster School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFFFFD700),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uqte93lgcnxm/Westeminster_School_Sports_Image.webp',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1888 - Simsbury, CT',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel10,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png',
                              schoolName: 'Westminster School',
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
                                'SCHOOL_LIST_Container_32vww95z_ON_TAP');
                            logFirebaseEvent('eachSchoolList_haptic_feedback');
                            HapticFeedback.lightImpact();
                            logFirebaseEvent('eachSchoolList_navigate_to');

                            context.pushNamed(
                              'EachSchoolProfile',
                              queryParameters: {
                                'schoolName': serializeParam(
                                  'Trinity-Pawling School',
                                  ParamType.String,
                                ),
                                'schoolColor': serializeParam(
                                  const Color(0xFF0000FF),
                                  ParamType.Color,
                                ),
                                'schoolSportsImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/bn806x32yhsg/Trinity-Pawling_School_Sports_Image.jpg',
                                  ParamType.String,
                                ),
                                'schoolLogoImage': serializeParam(
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dvee5i6026az/Trinity-Pawling_School_White_Logo-removebg-preview_(1).png',
                                  ParamType.String,
                                ),
                                'schoolExplanation': serializeParam(
                                  'Est: 1907 - Pawling, NY',
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.eachSchoolListModel11,
                            updateCallback: () => safeSetState(() {}),
                            child: const EachSchoolListWidget(
                              schoolLogo:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg',
                              schoolName: 'Trinity-Pawling School',
                            ),
                          ),
                        ),
                      ].divide(const SizedBox(height: 10.0)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
