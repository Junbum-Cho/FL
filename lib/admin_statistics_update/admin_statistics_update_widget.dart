import '/components/statistics_cards_widget.dart';
import '/components/tentative_instagram_view_widget.dart';
import '/f_l_bar/option2/option2_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'admin_statistics_update_model.dart';
export 'admin_statistics_update_model.dart';

class AdminStatisticsUpdateWidget extends StatefulWidget {
  const AdminStatisticsUpdateWidget({super.key});

  @override
  State<AdminStatisticsUpdateWidget> createState() =>
      _AdminStatisticsUpdateWidgetState();
}

class _AdminStatisticsUpdateWidgetState
    extends State<AdminStatisticsUpdateWidget> with TickerProviderStateMixin {
  late AdminStatisticsUpdateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminStatisticsUpdateModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminStatisticsUpdate'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
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
    return Title(
        title: 'AdminStatisticsUpdate',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).accent1,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 65.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 35.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ADMIN_STATISTICS_UPDATE_chevron_left_ICN');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 448.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 0.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '5zjiwfoe' /* Update Statistics */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 10.0, 15.0, 0.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  '40lo75g9' /* Update the main four cathegori... */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      fontSize: 17.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 400.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 10.0, 0.0),
                              child: MasonryGridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                ),
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                itemCount: 4,
                                padding: const EdgeInsets.fromLTRB(
                                  0,
                                  10.0,
                                  0,
                                  10.0,
                                ),
                                itemBuilder: (context, index) {
                                  return [
                                    () => wrapWithModel(
                                          model: _model.statisticsCardsModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const StatisticsCardsWidget(),
                                        ),
                                    () => wrapWithModel(
                                          model: _model.statisticsCardsModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const StatisticsCardsWidget(),
                                        ),
                                    () => wrapWithModel(
                                          model: _model.statisticsCardsModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const StatisticsCardsWidget(),
                                        ),
                                    () => wrapWithModel(
                                          model: _model.statisticsCardsModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const StatisticsCardsWidget(),
                                        ),
                                  ][index]();
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Container(
                        height: 1200.0,
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
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
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  unselectedBackgroundColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderColor:
                                      FlutterFlowTheme.of(context).primary,
                                  unselectedBorderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 10.0,
                                  elevation: 0.0,
                                  buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  padding: const EdgeInsets.all(4.0),
                                  tabs: [
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'ogs490mv' /* Related */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'z526azbk' /* Official */,
                                      ),
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [() async {}, () async {}][i]();
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
                                        wrapWithModel(
                                          model: _model.option2Model1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const Option2Widget(
                                            optionName: 'Season Stats',
                                            optionIcon: Icon(
                                              Icons.query_stats,
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.option2Model2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const Option2Widget(
                                            optionName: 'All-time Stats',
                                            optionIcon: Icon(
                                              Icons.stacked_line_chart,
                                            ),
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.option2Model3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const Option2Widget(
                                            optionName: 'Hall of Fame',
                                            optionIcon: FaIcon(
                                              FontAwesomeIcons.trophy,
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 5.0))
                                          .addToStart(const SizedBox(height: 10.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model: _model
                                                  .tentativeInstagramViewModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  const TentativeInstagramViewWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .tentativeInstagramViewModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  const TentativeInstagramViewWidget(),
                                            ),
                                            wrapWithModel(
                                              model: _model
                                                  .tentativeInstagramViewModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child:
                                                  const TentativeInstagramViewWidget(),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                't58m0aow' /* View More in Instagram */,
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
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
            ),
          ),
        ));
  }
}
