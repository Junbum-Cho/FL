import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'article_details_model.dart';
export 'article_details_model.dart';

class ArticleDetailsWidget extends StatefulWidget {
  const ArticleDetailsWidget({
    super.key,
    String? title,
    String? author,
    required this.image1,
    required this.timeStamp,
    String? subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.content1,
    required this.content2,
    required this.content3,
    required this.image2,
    required this.image3,
    required this.auhtorProfileImage,
    required this.cathegories,
  })  : title = title ?? 'NA',
        author = author ?? 'NA',
        subtitle1 = subtitle1 ?? 'NA';

  final String title;
  final String author;
  final String? image1;
  final DateTime? timeStamp;
  final String subtitle1;
  final String? subtitle2;
  final String? subtitle3;
  final String? content1;
  final String? content2;
  final String? content3;
  final String? image2;
  final String? image3;
  final String? auhtorProfileImage;
  final List<String>? cathegories;

  @override
  State<ArticleDetailsWidget> createState() => _ArticleDetailsWidgetState();
}

class _ArticleDetailsWidgetState extends State<ArticleDetailsWidget> {
  late ArticleDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticleDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ArticleDetails'});
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
        title: 'ArticleDetails',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ARTICLE_DETAILS_arrow_back_ios_outlined_');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                FFAppState().schoolName,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
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
                          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 44.0,
                            height: 44.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).accent1,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 400),
                                  fadeOutDuration: const Duration(milliseconds: 400),
                                  imageUrl: widget.auhtorProfileImage!,
                                  width: 44.0,
                                  height: 44.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.author,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      dateTimeFormat(
                                        "MMMEd",
                                        widget.timeStamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'ARTICLE_DETAILS_Icon_lpoixtbs_ON_TAP');
                                logFirebaseEvent(
                                    'Icon_generate_current_page_link');
                                _model.currentPageLink =
                                    await generateCurrentPageLink(
                                  context,
                                  title: widget.title,
                                  imageUrl: widget.image1,
                                  description: widget.subtitle1,
                                  isShortLink: false,
                                );

                                logFirebaseEvent('Icon_share');
                                await Share.share(
                                  _model.currentPageLink,
                                  sharePositionOrigin:
                                      getWidgetBoundingBox(context),
                                );
                              },
                              child: Icon(
                                Icons.ios_share,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 24.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: Container(
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl: widget.image1!,
                              width: double.infinity,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: AutoSizeText(
                        widget.title,
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        minFontSize: 13.0,
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              fontSize: 26.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Builder(
                      builder: (context) {
                        final cathegories = widget.cathegories!.toList();

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(cathegories.length,
                                    (cathegoriesIndex) {
                              final cathegoriesItem =
                                  cathegories[cathegoriesIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Container(
                                  height: 32.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Text(
                                        '#$cathegoriesItem',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })
                                .divide(const SizedBox(width: 8.0))
                                .addToStart(const SizedBox(width: 15.0))
                                .addToEnd(const SizedBox(width: 25.0)),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            widget.subtitle1,
                            maxLines: 3,
                            minFontSize: 13.0,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 22.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.content1,
                              'NA',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ].divide(const SizedBox(height: 10.0)),
                      ),
                    ),
                    if ((widget.subtitle2 != null &&
                            widget.subtitle2 != '') &&
                        (widget.content2 != null && widget.content2 != ''))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 20.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              valueOrDefault<String>(
                                widget.subtitle2,
                                'NA',
                              ),
                              maxLines: 3,
                              minFontSize: 13.0,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.content2,
                                'NA',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            if (widget.image2 != null && widget.image2 != '')
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 500),
                                  fadeOutDuration: const Duration(milliseconds: 500),
                                  imageUrl: widget.image2!,
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    if ((widget.subtitle3 != null &&
                            widget.subtitle3 != '') &&
                        (widget.content3 != null && widget.content3 != ''))
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 20.0, 15.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              valueOrDefault<String>(
                                widget.subtitle3,
                                'NA',
                              ),
                              maxLines: 3,
                              minFontSize: 13.0,
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 22.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                widget.content3,
                                'NA',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            if (widget.image3 != null && widget.image3 != '')
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: CachedNetworkImage(
                                  fadeInDuration: const Duration(milliseconds: 500),
                                  fadeOutDuration: const Duration(milliseconds: 500),
                                  imageUrl: widget.image3!,
                                  width: 300.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                  ]
                      .divide(const SizedBox(height: 12.0))
                      .addToEnd(const SizedBox(height: 30.0)),
                ),
              ),
            ),
          ),
        ));
  }
}
