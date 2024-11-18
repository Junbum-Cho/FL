import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/news_block_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/latest_components/latest_articles2/latest_articles2_widget.dart';
import '/latest_components/latest_news/latest_news_widget.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import '/walkthroughs/latest_page_walk_through.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'latest_model.dart';
export 'latest_model.dart';

class LatestWidget extends StatefulWidget {
  const LatestWidget({
    super.key,
    this.code,
  });

  final String? code;

  @override
  State<LatestWidget> createState() => _LatestWidgetState();
}

class _LatestWidgetState extends State<LatestWidget>
    with TickerProviderStateMixin {
  late LatestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LatestModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Latest'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('LATEST_PAGE_Latest_ON_INIT_STATE');
      logFirebaseEvent('Latest_custom_action');
      await actions.lockPhoneOrientation();
      logFirebaseEvent('Latest_update_app_state');
      FFAppState().userRole = valueOrDefault(currentUserDocument?.isFaculty, 0);
      FFAppState().facultyTeam =
          valueOrDefault(currentUserDocument?.facultyTeam, '');
      FFAppState().schoolName = valueOrDefault<String>(
        valueOrDefault(currentUserDocument?.userSchool, ''),
        'NA',
      );
      FFAppState().gmailVerified =
          valueOrDefault<bool>(currentUserDocument?.gmailVerified, false);
      FFAppState().update(() {});
      logFirebaseEvent('Latest_backend_call');
      _model.accessTokenValidity =
          await VeracrossAuthenticationGroup.veracrossTokenIntrospectCall.call(
        token: FFAppState().serverAccessToken,
      );

      if ((_model.accessTokenValidity?.bodyText ?? '') ==
          '{\"active\":false}') {
        logFirebaseEvent('Latest_backend_call');
        _model.newAccessToken = await VeracrossAuthenticationGroup
            .veracrossClientCredentialsAccessTokenCall
            .call();

        if (VeracrossAuthenticationGroup
                .veracrossClientCredentialsAccessTokenCall
                .accessToken(
              (_model.newAccessToken?.jsonBody ?? ''),
            ) !=
            'true') {
          logFirebaseEvent('Latest_update_app_state');
          FFAppState().serverAccessToken = VeracrossAuthenticationGroup
              .veracrossClientCredentialsAccessTokenCall
              .accessToken(
            (_model.newAccessToken?.jsonBody ?? ''),
          )!;
          safeSetState(() {});
        }
      }
    });

    animationsMap.addAll({
      'latestArticles2OnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeIn,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
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
        title: 'Latest',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              body: SafeArea(
                top: true,
                child: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (FFAppState().userRole == 2)
                                Align(
                                  alignment: const AlignmentDirectional(-1.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'LATEST_PAGE_Icon_tm8zwk24_ON_TAP');
                                      logFirebaseEvent('Icon_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                      logFirebaseEvent('Icon_navigate_to');

                                      context.pushNamed('AdminActivity');
                                    },
                                    child: Icon(
                                      Icons.admin_panel_settings,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              Expanded(
                                flex: 1,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: AutoSizeText(
                                    FFLocalizations.of(context).getText(
                                      'hgnuhew8' /* Founders League */,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Colors.white,
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              if ((valueOrDefault(
                                          currentUserDocument?.isFaculty, 0) ==
                                      1) ||
                                  (valueOrDefault(
                                          currentUserDocument?.isFaculty, 0) ==
                                      2))
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: AuthUserStreamWidget(
                                      builder: (context) => InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'LATEST_PAGE_Icon_cpn7d4e7_ON_TAP');
                                          logFirebaseEvent('Icon_navigate_to');

                                          context.pushNamed('UploadArticle');

                                          logFirebaseEvent(
                                              'Icon_haptic_feedback');
                                          HapticFeedback.lightImpact();
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          size: 25.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ).addWalkthrough(
                            row1yk8nbvq,
                            _model.latestPageWalkThroughController,
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) =>
                                    StreamBuilder<List<AllArticlesRecord>>(
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 50.0,
                                          ),
                                        ),
                                      );
                                    }
                                    List<AllArticlesRecord>
                                        latestNewsAllArticlesRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final latestNewsAllArticlesRecord =
                                        latestNewsAllArticlesRecordList
                                                .isNotEmpty
                                            ? latestNewsAllArticlesRecordList
                                                .first
                                            : null;

                                    return wrapWithModel(
                                      model: _model.latestNewsModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: LatestNewsWidget(
                                        title: valueOrDefault<String>(
                                          latestNewsAllArticlesRecord?.title,
                                          'AOF wins the wrestling match with Choate',
                                        ),
                                        image1: valueOrDefault<String>(
                                          latestNewsAllArticlesRecord?.image,
                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/mwu9q4rpsdxp/FL_3.jpeg',
                                        ),
                                        author:
                                            latestNewsAllArticlesRecord!.author,
                                        timeStamp: latestNewsAllArticlesRecord
                                            .timestamp!,
                                        subtitle1: latestNewsAllArticlesRecord
                                            .subtitle1,
                                        subtitle2: latestNewsAllArticlesRecord
                                            .subtitle2,
                                        subtitle3: latestNewsAllArticlesRecord
                                            .subtitle3,
                                        content1: latestNewsAllArticlesRecord
                                            .content1,
                                        content2: latestNewsAllArticlesRecord
                                            .content2,
                                        content3: latestNewsAllArticlesRecord
                                            .content3,
                                        image2:
                                            latestNewsAllArticlesRecord.image2,
                                        image3:
                                            latestNewsAllArticlesRecord.image3,
                                        authorProfileImage:
                                            latestNewsAllArticlesRecord
                                                .authorProfileImage,
                                        cathegories: latestNewsAllArticlesRecord
                                            .cathegory,
                                      ),
                                    ).addWalkthrough(
                                      containerFpst3hbw,
                                      _model.latestPageWalkThroughController,
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 6.0, 16.0, 6.0),
                              child: FutureBuilder<
                                  List<SpecialArticleContentsRecord>>(
                                future: querySpecialArticleContentsRecordOnce(
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<SpecialArticleContentsRecord>
                                      newsBlockSpecialArticleContentsRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final newsBlockSpecialArticleContentsRecord =
                                      newsBlockSpecialArticleContentsRecordList
                                              .isNotEmpty
                                          ? newsBlockSpecialArticleContentsRecordList
                                              .first
                                          : null;

                                  return wrapWithModel(
                                    model: _model.newsBlockModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: NewsBlockWidget(
                                      title: valueOrDefault<String>(
                                        newsBlockSpecialArticleContentsRecord
                                            ?.title,
                                        'Varsity Soccer Game TODAY: Loomis VS WINGED BEAVERS',
                                      ),
                                      image:
                                          newsBlockSpecialArticleContentsRecord!
                                              .image,
                                      description: valueOrDefault<String>(
                                        newsBlockSpecialArticleContentsRecord
                                            .description,
                                        'Adrian Clarke says midfield battle between Mainoo and Szoboszlai could decide Man Utd vs Liverpool',
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ]
                              .divide(const SizedBox(height: 15.0))
                              .addToEnd(const SizedBox(height: 20.0)),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'emmcrds8' /* Latest Videos */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: ListView(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'LATEST_PAGE_Container_u58q3xps_ON_TAP');
                                          logFirebaseEvent(
                                              'LatestVideo_navigate_to');

                                          context.pushNamed('VideoPlaying');
                                        },
                                        child: wrapWithModel(
                                          model: _model.latestVideoModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: const LatestVideoWidget(
                                            videoTitle:
                                                'Avon Old Farms VS Loomis Lacrosse 6/04 Highlights',
                                            videoLength: 3,
                                            videoImage:
                                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/ebr3pn8fkw1g/Loomis_Chaffee_School_Sports_Image.png',
                                          ),
                                        ),
                                      ).addWalkthrough(
                                        containerU58q3xps,
                                        _model.latestPageWalkThroughController,
                                      ),
                                      Builder(
                                        builder: (context) => InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'LATEST_PAGE_Container_zwqew9fh_ON_TAP');
                                            logFirebaseEvent(
                                                'LatestVideo_generate_current_page_link');
                                            _model.currentPageLink =
                                                await generateCurrentPageLink(
                                              context,
                                              title: '.',
                                              imageUrl: '.',
                                              description: '.',
                                            );

                                            logFirebaseEvent(
                                                'LatestVideo_share');
                                            await Share.share(
                                              _model.currentPageLink,
                                              sharePositionOrigin:
                                                  getWidgetBoundingBox(context),
                                            );
                                          },
                                          child: wrapWithModel(
                                            model: _model.latestVideoModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const LatestVideoWidget(
                                              videoTitle:
                                                  'Miss Porter\'s VS Loomis: Stunning Victory for Porters: Analysis',
                                              videoLength: 2,
                                              videoImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/2x482w81urk5/Miss_Porters_School_Sports_Image.jpeg',
                                            ),
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.latestVideoModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: const LatestVideoWidget(
                                          videoTitle:
                                              'KingsWood Oxford VS Choate: The Strategy',
                                          videoLength: 3,
                                          videoImage:
                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/uqte93lgcnxm/Westeminster_School_Sports_Image.webp',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: FFLocalizations.of(context).getText(
                                  'v6z0xifj' /* More Videos */,
                                ),
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 357.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).alternate,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 20.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'rz8t5ba6' /* Latest News & Articles  */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .accent1,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: AuthUserStreamWidget(
                                        builder: (context) => FutureBuilder<
                                            List<AllArticlesRecord>>(
                                          future: queryAllArticlesRecordOnce(
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
                                            limit: 3,
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
                                                        'LATEST_PAGE_Container_fj56lgyk_ON_TAP');
                                                    logFirebaseEvent(
                                                        'LatestArticles2_navigate_to');

                                                    context.pushNamed(
                                                      'ArticleDetails',
                                                      queryParameters: {
                                                        'title': serializeParam(
                                                          columnAllArticlesRecord
                                                              .title,
                                                          ParamType.String,
                                                        ),
                                                        'author':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .author,
                                                          ParamType.String,
                                                        ),
                                                        'image1':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .image,
                                                          ParamType.String,
                                                        ),
                                                        'timeStamp':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .timestamp,
                                                          ParamType.DateTime,
                                                        ),
                                                        'subtitle1':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .subtitle1,
                                                          ParamType.String,
                                                        ),
                                                        'subtitle2':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .subtitle2,
                                                          ParamType.String,
                                                        ),
                                                        'subtitle3':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .subtitle3,
                                                          ParamType.String,
                                                        ),
                                                        'content1':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .content1,
                                                          ParamType.String,
                                                        ),
                                                        'content2':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .content2,
                                                          ParamType.String,
                                                        ),
                                                        'content3':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .content3,
                                                          ParamType.String,
                                                        ),
                                                        'image2':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .image2,
                                                          ParamType.String,
                                                        ),
                                                        'image3':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .image3,
                                                          ParamType.String,
                                                        ),
                                                        'auhtorProfileImage':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .authorProfileImage,
                                                          ParamType.String,
                                                        ),
                                                        'cathegories':
                                                            serializeParam(
                                                          columnAllArticlesRecord
                                                              .cathegory,
                                                          ParamType.String,
                                                          isList: true,
                                                        ),
                                                      }.withoutNulls,
                                                    );
                                                  },
                                                  child: LatestArticles2Widget(
                                                    key: Key(
                                                        'Keyfj5_${columnIndex}_of_${columnAllArticlesRecordList.length}'),
                                                    title:
                                                        columnAllArticlesRecord
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
                                                  ),
                                                )
                                                    .addWalkthrough(
                                                      containerFj56lgyk,
                                                      _model
                                                          .latestPageWalkThroughController,
                                                      listIndex: columnIndex,
                                                    )
                                                    .animateOnPageLoad(
                                                        animationsMap[
                                                            'latestArticles2OnPageLoadAnimation']!);
                                              }),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'LATEST_PAGE_MORE_ARTICLES_BTN_ON_TAP');
                                      logFirebaseEvent(
                                          'Button_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                      logFirebaseEvent('Button_navigate_to');

                                      context.pushNamed('ArticleLists');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'ti115n6p' /* More Articles */,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_forward,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 357.0,
                                      height: 40.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ].addToEnd(const SizedBox(height: 20.0)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.latestPageWalkThroughController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
