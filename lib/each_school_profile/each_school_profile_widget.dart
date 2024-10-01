import '/f_l_bar/option2/option2_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                      imageUrl: widget.schoolSportsImage!,
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
                              imageUrl: widget.schoolLogoImage!,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Stack(
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
                                    15.0, 10.0, 0.0, 0.0),
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
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '4r5zbjmh' /* Tab View 2 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'wdri7jj6' /* Tab View 3 */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 32.0,
                                        letterSpacing: 0.0,
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
