import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/article_details2_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'article_lists_model.dart';
export 'article_lists_model.dart';

class ArticleListsWidget extends StatefulWidget {
  const ArticleListsWidget({super.key});

  @override
  State<ArticleListsWidget> createState() => _ArticleListsWidgetState();
}

class _ArticleListsWidgetState extends State<ArticleListsWidget> {
  late ArticleListsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticleListsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ArticleLists'});
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
        title: 'ArticleLists',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  expandedHeight: 80.0,
                  pinned: true,
                  floating: false,
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  actions: const [],
                  flexibleSpace: FlexibleSpaceBar(
                    title: Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 55.0,
                            icon: Icon(
                              Icons.chevron_left,
                              color: FlutterFlowTheme.of(context).accent1,
                              size: 35.0,
                            ),
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ARTICLE_LISTS_chevron_left_ICN_ON_TAP');
                              logFirebaseEvent('IconButton_navigate_back');
                              context.pop();
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 6.0),
                            child: Container(
                              width: 44.0,
                              height: 44.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent1,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => ClipRRect(
                                    borderRadius: BorderRadius.circular(50.0),
                                    child: CachedNetworkImage(
                                      fadeInDuration:
                                          const Duration(milliseconds: 500),
                                      fadeOutDuration:
                                          const Duration(milliseconds: 500),
                                      imageUrl: currentUserPhoto,
                                      width: 300.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                'Hey ${valueOrDefault<String>(
                                  currentUserDisplayName,
                                  'Unknown User',
                                )}',
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    centerTitle: true,
                    expandedTitleScale: 1.0,
                  ),
                  elevation: 0.0,
                )
              ],
              body: Builder(
                builder: (context) {
                  return SafeArea(
                    top: false,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'diuzfwrf' /* Stay up to date with the lates... */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 8.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              onFieldSubmitted: (_) async {
                                logFirebaseEvent(
                                    'ARTICLE_LISTS_TextField_cb8kub2h_ON_TEXT');
                                logFirebaseEvent('TextField_simple_search');
                                await queryArticlesRecordOnce()
                                    .then(
                                      (records) => _model
                                          .simpleSearchResults = TextSearch(
                                        records
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record,
                                                      [record.schoolName]),
                                            )
                                            .toList(),
                                      )
                                          .search(_model.textController.text)
                                          .map((r) => r.object)
                                          .toList(),
                                    )
                                    .onError((_, __) =>
                                        _model.simpleSearchResults = [])
                                    .whenComplete(() => safeSetState(() {}));
                              },
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'jp961c7i' /* Search all articles... */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                                suffixIcon: Icon(
                                  Icons.search_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              cursorColor: FlutterFlowTheme.of(context).primary,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 290.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: StreamBuilder<List<AllArticlesRecord>>(
                              stream: queryAllArticlesRecord(
                                queryBuilder: (allArticlesRecord) =>
                                    allArticlesRecord
                                        .where(
                                          'authorSchool',
                                          isEqualTo: FFAppState().schoolName,
                                        )
                                        .orderBy('Timestamp', descending: true),
                                limit: 4,
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
                                    listViewAllArticlesRecordList =
                                    snapshot.data!;

                                return ListView.separated(
                                  padding: const EdgeInsets.fromLTRB(
                                    16.0,
                                    0,
                                    16.0,
                                    0,
                                  ),
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      listViewAllArticlesRecordList.length,
                                  separatorBuilder: (_, __) =>
                                      const SizedBox(width: 12.0),
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAllArticlesRecord =
                                        listViewAllArticlesRecordList[
                                            listViewIndex];
                                    return Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 16.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'ARTICLE_LISTS_Container_r60wagyj_ON_TAP');
                                          logFirebaseEvent(
                                              'Container_navigate_to');

                                          context.pushNamed(
                                            'ArticleDetails',
                                            queryParameters: {
                                              'title': serializeParam(
                                                listViewAllArticlesRecord.title,
                                                ParamType.String,
                                              ),
                                              'author': serializeParam(
                                                listViewAllArticlesRecord
                                                    .author,
                                                ParamType.String,
                                              ),
                                              'image1': serializeParam(
                                                listViewAllArticlesRecord.image,
                                                ParamType.String,
                                              ),
                                              'timeStamp': serializeParam(
                                                listViewAllArticlesRecord
                                                    .timestamp,
                                                ParamType.DateTime,
                                              ),
                                              'subtitle1': serializeParam(
                                                listViewAllArticlesRecord
                                                    .subtitle1,
                                                ParamType.String,
                                              ),
                                              'subtitle2': serializeParam(
                                                listViewAllArticlesRecord
                                                    .subtitle2,
                                                ParamType.String,
                                              ),
                                              'subtitle3': serializeParam(
                                                listViewAllArticlesRecord
                                                    .subtitle3,
                                                ParamType.String,
                                              ),
                                              'content1': serializeParam(
                                                listViewAllArticlesRecord
                                                    .content1,
                                                ParamType.String,
                                              ),
                                              'content2': serializeParam(
                                                listViewAllArticlesRecord
                                                    .content2,
                                                ParamType.String,
                                              ),
                                              'content3': serializeParam(
                                                listViewAllArticlesRecord
                                                    .content3,
                                                ParamType.String,
                                              ),
                                              'image2': serializeParam(
                                                listViewAllArticlesRecord
                                                    .image2,
                                                ParamType.String,
                                              ),
                                              'image3': serializeParam(
                                                listViewAllArticlesRecord
                                                    .image3,
                                                ParamType.String,
                                              ),
                                              'auhtorProfileImage':
                                                  serializeParam(
                                                listViewAllArticlesRecord
                                                    .authorProfileImage,
                                                ParamType.String,
                                              ),
                                              'cathegories': serializeParam(
                                                listViewAllArticlesRecord
                                                    .cathegory,
                                                ParamType.String,
                                                isList: true,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: 260.0,
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
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 120.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(2.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
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
                                                          imageUrl:
                                                              listViewAllArticlesRecord
                                                                  .image,
                                                          width: 120.0,
                                                          height: 120.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 8.0, 4.0, 4.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        listViewAllArticlesRecord
                                                            .title,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Wrap(
                                                          spacing: 0.0,
                                                          runSpacing: 0.0,
                                                          alignment:
                                                              WrapAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.none,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Text(
                                                                listViewAllArticlesRecord
                                                                    .author,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .chat_bubble_outline_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 16.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFLocalizations.of(
                                                                        context)
                                                                    .getText(
                                                                  'ak5gx43l' /* 24 */,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Text(
                                                              dateTimeFormat(
                                                                "relative",
                                                                listViewAllArticlesRecord
                                                                    .timestamp!,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .keyboard_control_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 16.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 4.0)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8btpzhmg' /* For You */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '9bfigiu1' /* General */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'ha0a3z8l' /* Soccer */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'z0t94z2q' /* Cross Country */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'ammvr2k5' /* Football */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'hzl3pt74' /* Hockey */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'falf9hd5' /* Basketball */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'tdcrtkgu' /* Swimming */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8zw1hzw5' /* Sqaush */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          'cgxpaf42' /* Wrestling */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8z5w1w9k' /* Baseball */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '8ju450me' /* Golf */,
                                        )),
                                        ChipData(
                                            FFLocalizations.of(context).getText(
                                          '7qrihnap' /* Lacrosse */,
                                        ))
                                      ],
                                      onChanged: (val) => safeSetState(
                                          () => _model.choiceChipsValues = val),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor:
                                            FlutterFlowTheme.of(context).info,
                                        iconSize: 18.0,
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        borderWidth: 1.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              letterSpacing: 0.0,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                        borderWidth: 1.0,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      chipSpacing: 8.0,
                                      rowSpacing: 12.0,
                                      multiselect: true,
                                      initialized:
                                          _model.choiceChipsValues != null,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      wrapped: true,
                                    ),
                                  ),
                                ]
                                    .addToStart(const SizedBox(width: 16.0))
                                    .addToEnd(const SizedBox(width: 16.0)),
                              ),
                            ),
                          ),
                          Divider(
                            height: 8.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '4bjghthx' /* Popular Today */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          AuthUserStreamWidget(
                            builder: (context) =>
                                StreamBuilder<List<AllArticlesRecord>>(
                              stream: queryAllArticlesRecord(
                                queryBuilder: (allArticlesRecord) =>
                                    allArticlesRecord
                                        .where(
                                          'authorSchool',
                                          isEqualTo: valueOrDefault(
                                              currentUserDocument?.userSchool,
                                              ''),
                                        )
                                        .whereArrayContainsAny('cathegory',
                                            _model.choiceChipsValues)
                                        .orderBy('Timestamp', descending: true),
                                limit: 10,
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
                                    listViewAllArticlesRecordList =
                                    snapshot.data!;

                                return ListView.builder(
                                  padding: const EdgeInsets.fromLTRB(
                                    0,
                                    8.0,
                                    0,
                                    44.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      listViewAllArticlesRecordList.length,
                                  itemBuilder: (context, listViewIndex) {
                                    final listViewAllArticlesRecord =
                                        listViewAllArticlesRecordList[
                                            listViewIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'ARTICLE_LISTS_Container_x7gd351l_ON_TAP');
                                        logFirebaseEvent(
                                            'ArticleDetails2_navigate_to');

                                        context.pushNamed(
                                          'ArticleDetails',
                                          queryParameters: {
                                            'title': serializeParam(
                                              listViewAllArticlesRecord.title,
                                              ParamType.String,
                                            ),
                                            'author': serializeParam(
                                              listViewAllArticlesRecord.author,
                                              ParamType.String,
                                            ),
                                            'image1': serializeParam(
                                              listViewAllArticlesRecord.image,
                                              ParamType.String,
                                            ),
                                            'timeStamp': serializeParam(
                                              listViewAllArticlesRecord
                                                  .timestamp,
                                              ParamType.DateTime,
                                            ),
                                            'subtitle1': serializeParam(
                                              listViewAllArticlesRecord
                                                  .subtitle1,
                                              ParamType.String,
                                            ),
                                            'subtitle2': serializeParam(
                                              listViewAllArticlesRecord
                                                  .subtitle2,
                                              ParamType.String,
                                            ),
                                            'subtitle3': serializeParam(
                                              listViewAllArticlesRecord
                                                  .subtitle3,
                                              ParamType.String,
                                            ),
                                            'content1': serializeParam(
                                              listViewAllArticlesRecord
                                                  .content1,
                                              ParamType.String,
                                            ),
                                            'content2': serializeParam(
                                              listViewAllArticlesRecord
                                                  .content2,
                                              ParamType.String,
                                            ),
                                            'content3': serializeParam(
                                              listViewAllArticlesRecord
                                                  .content3,
                                              ParamType.String,
                                            ),
                                            'image2': serializeParam(
                                              listViewAllArticlesRecord.image2,
                                              ParamType.String,
                                            ),
                                            'image3': serializeParam(
                                              listViewAllArticlesRecord.image3,
                                              ParamType.String,
                                            ),
                                            'auhtorProfileImage':
                                                serializeParam(
                                              listViewAllArticlesRecord
                                                  .authorProfileImage,
                                              ParamType.String,
                                            ),
                                            'cathegories': serializeParam(
                                              listViewAllArticlesRecord
                                                  .cathegory,
                                              ParamType.String,
                                              isList: true,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: ArticleDetails2Widget(
                                        key: Key(
                                            'Keyx7g_${listViewIndex}_of_${listViewAllArticlesRecordList.length}'),
                                        image: listViewAllArticlesRecord.image,
                                        title: valueOrDefault<String>(
                                          listViewAllArticlesRecord.title,
                                          'HSBC is getting back into consumer lending in the us according to...',
                                        ),
                                        author:
                                            listViewAllArticlesRecord.author,
                                        timestamp: listViewAllArticlesRecord
                                            .timestamp!,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ].addToStart(const SizedBox(height: 15.0)),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ));
  }
}
