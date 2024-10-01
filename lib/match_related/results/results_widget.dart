import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/match_related/match_result_final/match_result_final_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'results_model.dart';
export 'results_model.dart';

class ResultsWidget extends StatefulWidget {
  const ResultsWidget({super.key});

  @override
  State<ResultsWidget> createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget>
    with TickerProviderStateMixin {
  late ResultsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResultsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Results'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('RESULTS_PAGE_Results_ON_INIT_STATE');
      logFirebaseEvent('Results_update_page_state');
      _model.currentSchool = currentUserDocument?.userSchoolRef;
      safeSetState(() {});
    });

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
        title: 'Results',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 25.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('RESULTS_arrow_back_ios_new_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.safePop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'wycke26f' /* Results */,
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      fontSize: 25.0,
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
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
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
                              borderColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              unselectedBorderColor:
                                  FlutterFlowTheme.of(context).secondary,
                              borderWidth: 1.0,
                              borderRadius: 16.0,
                              elevation: 0.0,
                              buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 0.0, 8.0, 0.0),
                              padding: const EdgeInsets.all(14.0),
                              tabs: [
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'j413kldk' /* Fall */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    '4zjr5eds' /* Winter */,
                                  ),
                                ),
                                Tab(
                                  text: FFLocalizations.of(context).getText(
                                    'ixab9izo' /* Spring */,
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
                                ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownFallValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lprjtypa' /* Football */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nrzashc6' /* Soccer */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9s0ldecz' /* Cross Country */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownFallValue =
                                                    val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              '6nv1wloq' /* Select a Sport... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                            labelText: '',
                                            labelTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController1 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'wjjnrgyn' /* Avon Old Farms */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4dqolzs5' /* Choate */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'm7wsd2bo' /* Kent */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'r52risme' /* Miss Porter's */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'xfm4i9bf' /* Taft */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'l82oci6q' /* Westminster */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tohdzxb7' /* Hotchkiss */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tgtqk5y3' /* Ethel Walker */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'sylvahdi' /* Kingswood Oxford */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue1 =
                                                    val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'wwvcxc7s' /* Select a School... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ].divide(const SizedBox(width: 1.0)),
                                      ),
                                    ),
                                    StreamBuilder<List<ResultsRecord>>(
                                      stream: queryResultsRecord(
                                        queryBuilder: (resultsRecord) =>
                                            resultsRecord
                                                .where(
                                                  'schoolOneName',
                                                  isEqualTo:
                                                      FFAppState().schoolName,
                                                )
                                                .where(
                                                  'sportsName',
                                                  isEqualTo:
                                                      _model.dropDownFallValue,
                                                )
                                                .where(
                                                  'sportsSeason',
                                                  isEqualTo: 'Fall',
                                                )
                                                .where(
                                                  'matchDate',
                                                  isLessThanOrEqualTo:
                                                      dateTimeFormat(
                                                    "MEd",
                                                    getCurrentTimestamp,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                )
                                                .orderBy('matchDate',
                                                    descending: true),
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ResultsRecord>
                                            listViewResultsRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewResultsRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewResultsRecord =
                                                listViewResultsRecordList[
                                                    listViewIndex];
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'RESULTS_PAGE_Container_rv4e7xbo_ON_TAP');
                                                logFirebaseEvent(
                                                    'matchResultFinal_haptic_feedback');
                                                HapticFeedback.lightImpact();
                                                logFirebaseEvent(
                                                    'matchResultFinal_navigate_to');

                                                context.pushNamed(
                                                  'MatchOverview',
                                                  queryParameters: {
                                                    'sportsType':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .sportsType,
                                                      ParamType.String,
                                                    ),
                                                    'schoolOneName':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .schoolOneName,
                                                      ParamType.String,
                                                    ),
                                                    'schoolNameTwo':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .opponent,
                                                      ParamType.String,
                                                    ),
                                                    'schoolOneScore':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .schoolOneScore,
                                                      ParamType.int,
                                                    ),
                                                    'schoolTwoScore':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .schoolTwoScore,
                                                      ParamType.int,
                                                    ),
                                                    'matchDate': serializeParam(
                                                      listViewResultsRecord
                                                          .matchDate,
                                                      ParamType.String,
                                                    ),
                                                    'matchLocation':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .matchLocation,
                                                      ParamType.String,
                                                    ),
                                                    'schoolOneImage':
                                                        serializeParam(
                                                      valueOrDefault<String>(
                                                        () {
                                                          if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Avon Old Farms School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Choate Rosemary Hall') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'The Ethel Walker School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'The Hotchkiss School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Kent School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Kingswood Oxford School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Loomis Chaffee School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Miss Porter\'s School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'The Taft School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Trinity-Pawling School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                          } else if (listViewResultsRecord
                                                                  .schoolOneName ==
                                                              'Westminster School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                          } else {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          }
                                                        }(),
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                    'schoolTwoImage':
                                                        serializeParam(
                                                      valueOrDefault<String>(
                                                        () {
                                                          if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Avon Old Farms School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Choate Rosemary Hall') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'The Ethel Walker School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'The Hotchkiss School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Kent School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Kingswood Oxford School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Loomis Chaffee School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Miss Porter\'s School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'The Taft School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Trinity-Pawling School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                          } else if (listViewResultsRecord
                                                                  .opponent ==
                                                              'Westminster School') {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                          } else {
                                                            return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                          }
                                                        }(),
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k3u8jgp8tc1n/Choate_Logo.png',
                                                      ),
                                                      ParamType.String,
                                                    ),
                                                    'schoolOneColor':
                                                        serializeParam(
                                                      () {
                                                        if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Avon Old Farms School') {
                                                          return const Color(
                                                              0xFF800000);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Choate Rosemary Hall') {
                                                          return const Color(
                                                              0xFFFFD700);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'The Taft School') {
                                                          return const Color(
                                                              0xFF00356B);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'The Ehtel Walker School') {
                                                          return const Color(
                                                              0xFF800080);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'The Hotchkiss School') {
                                                          return const Color(
                                                              0xFF00356B);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Kent School') {
                                                          return const Color(
                                                              0xFF0000FF);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Kingswood Oxford School') {
                                                          return const Color(
                                                              0xFFDC143C);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Loomis Chaffee School') {
                                                          return const Color(
                                                              0xFF800000);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Miss Porter\'s School') {
                                                          return const Color(
                                                              0xFF008000);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Westminster School') {
                                                          return const Color(
                                                              0xFFFFD700);
                                                        } else if (listViewResultsRecord
                                                                .schoolOneName ==
                                                            'Trinity-Pawling School') {
                                                          return const Color(
                                                              0xFF0000FF);
                                                        } else {
                                                          return const Color(
                                                              0x00000000);
                                                        }
                                                      }(),
                                                      ParamType.Color,
                                                    ),
                                                    'schooltwoColor':
                                                        serializeParam(
                                                      () {
                                                        if (listViewResultsRecord
                                                                .opponent ==
                                                            'Avon Old Farms School') {
                                                          return const Color(
                                                              0xFF800000);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Choate Rosemary Hall') {
                                                          return const Color(
                                                              0xFFFFD700);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Taft School') {
                                                          return const Color(
                                                              0xFF00356B);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Ethel Walker School') {
                                                          return const Color(
                                                              0xFF800080);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Hotchkiss School') {
                                                          return const Color(
                                                              0xFF00356B);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kent School') {
                                                          return const Color(
                                                              0xFF0000FF);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kingswood Oxford School') {
                                                          return const Color(
                                                              0xFFDC143C);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Loomis Chaffee School') {
                                                          return const Color(
                                                              0xFF800000);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Miss Porter\'s School') {
                                                          return const Color(
                                                              0xFF008000);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Westminster School') {
                                                          return const Color(
                                                              0xFFFFD700);
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Trinity-Pawling School') {
                                                          return const Color(
                                                              0xFF0000FF);
                                                        } else {
                                                          return const Color(
                                                              0x00000000);
                                                        }
                                                      }(),
                                                      ParamType.Color,
                                                    ),
                                                    'docRef': serializeParam(
                                                      listViewResultsRecord
                                                          .reference.id,
                                                      ParamType.String,
                                                    ),
                                                    'commentNumber':
                                                        serializeParam(
                                                      listViewIndex,
                                                      ParamType.int,
                                                    ),
                                                    'bestPlayers':
                                                        serializeParam(
                                                      listViewResultsRecord
                                                          .bestPlayer,
                                                      ParamType.String,
                                                      isList: true,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: MatchResultFinalWidget(
                                                key: Key(
                                                    'Keyrv4_${listViewIndex}_of_${listViewResultsRecordList.length}'),
                                                matchDate: listViewResultsRecord
                                                    .matchDate,
                                                schoolScore1:
                                                    listViewResultsRecord
                                                        .schoolOneScore,
                                                schoolScore2:
                                                    listViewResultsRecord
                                                        .schoolTwoScore,
                                                sportsType:
                                                    listViewResultsRecord
                                                        .sportsType,
                                                schoolOneImage:
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
                                                schoolTwoImage:
                                                    valueOrDefault<String>(
                                                  () {
                                                    if (listViewResultsRecord
                                                            .opponent ==
                                                        'Avon Old Farms School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Choate Rosemary Hall') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'The Ethel Walker School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                    } else if (listViewResultsRecord
                                                                .opponent !=
                                                            '') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Kent School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Kingswood Oxford School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Loomis Chaffee School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Miss Porter\'s School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'The Taft School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Trinity-Pawling School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                    } else if (listViewResultsRecord
                                                            .opponent ==
                                                        'Westminster School') {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                    } else {
                                                      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                    }
                                                  }(),
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownWinterValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '6w8rpg1n' /* Hockey */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'v189sv61' /* Basketball */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2cgyr6sf' /* Squash */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '9uxfkyu0' /* Swimming */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vrc2im6n' /* Wrestling */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model
                                                    .dropDownWinterValue = val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'qz0t2g0i' /* Select a Sport... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                            labelText: '',
                                            labelTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController2 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hq25kqsa' /* Avon Old Farms */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'sa591w5s' /* Choate */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'tf3vbyvr' /* Kent */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '2we9jp05' /* Miss Porter's */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kf8wo05g' /* Taft */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '3vhmi8i3' /* Westminster */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'f43j3vst' /* Hotchkiss */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'nrw7tr5b' /* Ethel Walker */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'hw56piys' /* Kingswood Oxford */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue2 =
                                                    val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'oa6so5ii' /* Select a School... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ].divide(const SizedBox(width: 1.0)),
                                      ),
                                    ),
                                    StreamBuilder<List<ResultsRecord>>(
                                      stream: queryResultsRecord(
                                        queryBuilder: (resultsRecord) =>
                                            resultsRecord
                                                .where(
                                                  'schoolOneName',
                                                  isEqualTo:
                                                      FFAppState().schoolName,
                                                )
                                                .where(
                                                  'sportsName',
                                                  isEqualTo: _model
                                                      .dropDownWinterValue,
                                                )
                                                .where(
                                                  'sportsSeason',
                                                  isEqualTo: 'Winter',
                                                )
                                                .orderBy('matchDate',
                                                    descending: true),
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ResultsRecord>
                                            listViewResultsRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewResultsRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewResultsRecord =
                                                listViewResultsRecordList[
                                                    listViewIndex];
                                            return StreamBuilder<
                                                List<CommentsResultsRecord>>(
                                              stream:
                                                  queryCommentsResultsRecord(
                                                queryBuilder:
                                                    (commentsResultsRecord) =>
                                                        commentsResultsRecord
                                                            .where(
                                                  'pageDocRef',
                                                  isEqualTo:
                                                      listViewResultsRecord
                                                          .docID,
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CommentsResultsRecord>
                                                    matchResultFinalCommentsResultsRecordList =
                                                    snapshot.data!;

                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'RESULTS_PAGE_Container_k72avmk2_ON_TAP');
                                                    logFirebaseEvent(
                                                        'matchResultFinal_haptic_feedback');
                                                    HapticFeedback
                                                        .lightImpact();
                                                    logFirebaseEvent(
                                                        'matchResultFinal_navigate_to');

                                                    context.pushNamed(
                                                      'MatchOverview',
                                                      queryParameters: {
                                                        'sportsType':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .sportsType,
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneName':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewResultsRecord
                                                                .parentReference
                                                                .id,
                                                            'NA',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolNameTwo':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            listViewResultsRecord
                                                                .opponent,
                                                            'NA',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneScore':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .schoolOneScore,
                                                          ParamType.int,
                                                        ),
                                                        'schoolTwoScore':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .schoolTwoScore,
                                                          ParamType.int,
                                                        ),
                                                        'matchDate':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .matchDate,
                                                          ParamType.String,
                                                        ),
                                                        'matchLocation':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .matchLocation,
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneImage':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Avon Old Farms School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Choate Rosemary Hall') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Ethel Walker School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Hotchkiss School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Kent School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Kingswood Oxford School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Loomis Chaffee School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Miss Porter\'s School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Taft School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Trinity-Pawling School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Westminster School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                              } else {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              }
                                                            }(),
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolTwoImage':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Avon Old Farms School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Choate Rosemary Hall') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Ethel Walker School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Hotchkiss School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Kent School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Kingswood Oxford School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Loomis Chaffee School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Miss Porter\'s School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Taft School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Trinity-Pawling School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Westminster School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                              } else {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              }
                                                            }(),
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k3u8jgp8tc1n/Choate_Logo.png',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneColor':
                                                            serializeParam(
                                                          () {
                                                            if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Avon Old Farms School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Choate Rosemary Hall') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Taft School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Ehtel Walker School') {
                                                              return const Color(
                                                                  0xFF800080);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Hotchkiss School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Kent School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Kingswood Oxford School') {
                                                              return const Color(
                                                                  0xFFDC143C);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Loomis Chaffee School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Miss Porter\'s School') {
                                                              return const Color(
                                                                  0xFF008000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Westminster School') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Trinity-Pawling School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else {
                                                              return const Color(
                                                                  0x00000000);
                                                            }
                                                          }(),
                                                          ParamType.Color,
                                                        ),
                                                        'schooltwoColor':
                                                            serializeParam(
                                                          () {
                                                            if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Avon Old Farms School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Choate Rosemary Hall') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Taft School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Ethel Walker School') {
                                                              return const Color(
                                                                  0xFF800080);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Hotchkiss School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Kent School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Kingswood Oxford School') {
                                                              return const Color(
                                                                  0xFFDC143C);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Loomis Chaffee School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Miss Porter\'s School') {
                                                              return const Color(
                                                                  0xFF008000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Westminster School') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Trinity-Pawling School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else {
                                                              return const Color(
                                                                  0x00000000);
                                                            }
                                                          }(),
                                                          ParamType.Color,
                                                        ),
                                                        'docRef':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .reference.id,
                                                          ParamType.String,
                                                        ),
                                                        'commentNumber':
                                                            serializeParam(
                                                          matchResultFinalCommentsResultsRecordList
                                                              .length,
                                                          ParamType.int,
                                                        ),
                                                        'bestPlayers':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .bestPlayer,
                                                          ParamType.String,
                                                          isList: true,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: MatchResultFinalWidget(
                                                    key: Key(
                                                        'Keyk72_${listViewIndex}_of_${listViewResultsRecordList.length}'),
                                                    matchDate:
                                                        listViewResultsRecord
                                                            .matchDate,
                                                    schoolScore1:
                                                        listViewResultsRecord
                                                            .schoolOneScore,
                                                    schoolScore2:
                                                        listViewResultsRecord
                                                            .schoolTwoScore,
                                                    sportsType:
                                                        listViewResultsRecord
                                                            .sportsType,
                                                    schoolOneImage:
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
                                                    schoolTwoImage:
                                                        valueOrDefault<String>(
                                                      () {
                                                        if (listViewResultsRecord
                                                                .opponent ==
                                                            'Avon Old Farms School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Choate Rosemary Hall') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Ethel Walker School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Hotchkiss School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kent School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kingswood Oxford School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Loomis Chaffee School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Miss Porter\'s School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Taft School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Trinity-Pawling School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Westminster School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                        } else {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                        }
                                                      }(),
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 5.0, 10.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownSpringValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '5fj26oyy' /* Baseball */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'mxb1bx3k' /* Lacrosse */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'fxihi5p8' /* Golf */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '94v46l0o' /* Track and Field */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'k37iquqn' /* Tennis */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model
                                                    .dropDownSpringValue = val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'yd4dh934' /* Select a Sport... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                            labelText: '',
                                            labelTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                          ),
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController3 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: [
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'kxn9zzsu' /* Avon Old Farms */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4l2n89w3' /* Choate */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vbgzlmv1' /* Kent */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'ip999alx' /* Miss Porter's */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'x6pijlfq' /* Taft */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'dhelzi45' /* Westminster */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'q2t9xiu5' /* Hotchkiss */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'lu35l93s' /* Ethel Walker */,
                                              ),
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'q1og0dt3' /* Kingswood Oxford */,
                                              )
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue3 =
                                                    val),
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.45,
                                            height: 55.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'lzabss4g' /* Select a School... */,
                                            ),
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .accent1,
                                            borderWidth: 1.0,
                                            borderRadius: 30.0,
                                            margin:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 4.0, 16.0, 4.0),
                                            hidesUnderline: true,
                                            isOverButton: true,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ].divide(const SizedBox(width: 1.0)),
                                      ),
                                    ),
                                    StreamBuilder<List<ResultsRecord>>(
                                      stream: queryResultsRecord(
                                        queryBuilder: (resultsRecord) =>
                                            resultsRecord
                                                .where(
                                                  'schoolOneName',
                                                  isEqualTo:
                                                      FFAppState().schoolName,
                                                )
                                                .where(
                                                  'sportsName',
                                                  isEqualTo: _model
                                                      .dropDownSpringValue,
                                                )
                                                .where(
                                                  'sportsSeason',
                                                  isEqualTo: 'Spring',
                                                )
                                                .orderBy('matchDate',
                                                    descending: true),
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
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<ResultsRecord>
                                            listViewResultsRecordList =
                                            snapshot.data!;

                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          primary: false,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewResultsRecordList.length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewResultsRecord =
                                                listViewResultsRecordList[
                                                    listViewIndex];
                                            return StreamBuilder<
                                                List<CommentsResultsRecord>>(
                                              stream:
                                                  queryCommentsResultsRecord(
                                                queryBuilder:
                                                    (commentsResultsRecord) =>
                                                        commentsResultsRecord
                                                            .where(
                                                  'pageDocRef',
                                                  isEqualTo:
                                                      listViewResultsRecord
                                                          .docID,
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
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 50.0,
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CommentsResultsRecord>
                                                    matchResultFinalCommentsResultsRecordList =
                                                    snapshot.data!;

                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'RESULTS_PAGE_Container_ys360mpa_ON_TAP');
                                                    logFirebaseEvent(
                                                        'matchResultFinal_haptic_feedback');
                                                    HapticFeedback
                                                        .lightImpact();
                                                    logFirebaseEvent(
                                                        'matchResultFinal_navigate_to');

                                                    context.pushNamed(
                                                      'MatchOverview',
                                                      queryParameters: {
                                                        'sportsType':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .sportsType,
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneName':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .parentReference
                                                              .id,
                                                          ParamType.String,
                                                        ),
                                                        'schoolNameTwo':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .opponent,
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneScore':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .schoolOneScore,
                                                          ParamType.int,
                                                        ),
                                                        'schoolTwoScore':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .schoolTwoScore,
                                                          ParamType.int,
                                                        ),
                                                        'matchDate':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .matchDate,
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneImage':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Avon Old Farms School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Choate Rosemary Hall') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Ethel Walker School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Hotchkiss School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Kent School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Kingswood Oxford School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Loomis Chaffee School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Miss Porter\'s School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'The Taft School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Trinity-Pawling School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                              } else if (listViewResultsRecord
                                                                      .parentReference
                                                                      .id ==
                                                                  'Westminster School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                              } else {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              }
                                                            }(),
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolTwoImage':
                                                            serializeParam(
                                                          valueOrDefault<
                                                              String>(
                                                            () {
                                                              if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Avon Old Farms School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Choate Rosemary Hall') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Ethel Walker School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Hotchkiss School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Kent School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Kingswood Oxford School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Loomis Chaffee School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/l6pm5xxrb20z/Loomis_Chaffee_School_Logo_white_colored.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Miss Porter\'s School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'The Taft School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Trinity-Pawling School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k4l7kpj6z9u4/Westminster_School_logo.png';
                                                              } else if (listViewResultsRecord
                                                                      .opponent ==
                                                                  'Westminster School') {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                                              } else {
                                                                return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                              }
                                                            }(),
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/k3u8jgp8tc1n/Choate_Logo.png',
                                                          ),
                                                          ParamType.String,
                                                        ),
                                                        'schoolOneColor':
                                                            serializeParam(
                                                          () {
                                                            if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Avon Old Farms School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Choate Rosemary Hall') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Taft School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Ehtel Walker School') {
                                                              return const Color(
                                                                  0xFF800080);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'The Hotchkiss School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Kent School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Kingswood Oxford School') {
                                                              return const Color(
                                                                  0xFFDC143C);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Loomis Chaffee School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Miss Porter\'s School') {
                                                              return const Color(
                                                                  0xFF008000);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Westminster School') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .parentReference
                                                                    .id ==
                                                                'Trinity-Pawling School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else {
                                                              return const Color(
                                                                  0x00000000);
                                                            }
                                                          }(),
                                                          ParamType.Color,
                                                        ),
                                                        'schooltwoColor':
                                                            serializeParam(
                                                          () {
                                                            if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Avon Old Farms School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Choate Rosemary Hall') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Taft School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Ethel Walker School') {
                                                              return const Color(
                                                                  0xFF800080);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'The Hotchkiss School') {
                                                              return const Color(
                                                                  0xFF00356B);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Kent School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Kingswood Oxford School') {
                                                              return const Color(
                                                                  0xFFDC143C);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Loomis Chaffee School') {
                                                              return const Color(
                                                                  0xFF800000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Miss Porter\'s School') {
                                                              return const Color(
                                                                  0xFF008000);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Westminster School') {
                                                              return const Color(
                                                                  0xFFFFD700);
                                                            } else if (listViewResultsRecord
                                                                    .opponent ==
                                                                'Trinity-Pawling School') {
                                                              return const Color(
                                                                  0xFF0000FF);
                                                            } else {
                                                              return const Color(
                                                                  0x00000000);
                                                            }
                                                          }(),
                                                          ParamType.Color,
                                                        ),
                                                        'docRef':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .reference.id,
                                                          ParamType.String,
                                                        ),
                                                        'commentNumber':
                                                            serializeParam(
                                                          matchResultFinalCommentsResultsRecordList
                                                              .length,
                                                          ParamType.int,
                                                        ),
                                                        'matchLocation':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .matchLocation,
                                                          ParamType.String,
                                                        ),
                                                        'bestPlayers':
                                                            serializeParam(
                                                          listViewResultsRecord
                                                              .bestPlayer,
                                                          ParamType.String,
                                                          isList: true,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: MatchResultFinalWidget(
                                                    key: Key(
                                                        'Keyys3_${listViewIndex}_of_${listViewResultsRecordList.length}'),
                                                    matchDate:
                                                        listViewResultsRecord
                                                            .matchDate,
                                                    schoolScore1:
                                                        listViewResultsRecord
                                                            .schoolOneScore,
                                                    schoolScore2:
                                                        listViewResultsRecord
                                                            .schoolTwoScore,
                                                    sportsType:
                                                        listViewResultsRecord
                                                            .sportsType,
                                                    schoolOneImage:
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
                                                    schoolTwoImage:
                                                        valueOrDefault<String>(
                                                      () {
                                                        if (listViewResultsRecord
                                                                .opponent ==
                                                            'Avon Old Farms School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Choate Rosemary Hall') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/kzuk42534355/Choat_logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Ethel Walker School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/s7dqxfqomg19/Ethel_Walker_School_Logo_background_removed.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Hotchkiss School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/7760eyjyh5n2/The_Hotchkiss_School_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kent School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/dx5xb349eqwk/Kent_School_Logo_advanced.PNG';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Kingswood Oxford School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/empf9we100kc/Kingswood_Oxford_logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Loomis Chaffee School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/110v01jxmqhg/Loomis_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Miss Porter\'s School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/th8xwutehyu7/Miss_Porters_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'The Taft School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/3in893nrf0wd/Taft_Logo.png';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Trinity-Pawling School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/30ug7fgondd8/Trinity-Pawling_School_Logo_.jpg';
                                                        } else if (listViewResultsRecord
                                                                .opponent ==
                                                            'Westminster School') {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/rutpoxkei9f7/Westerminter_School_Logo_Background_Removed.png';
                                                        } else {
                                                          return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png';
                                                        }
                                                      }(),
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/v9nd0gcule8i/AOF_Logo.png',
                                                    ),
                                                  ),
                                                );
                                              },
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
