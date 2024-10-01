import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'latest_news_model.dart';
export 'latest_news_model.dart';

class LatestNewsWidget extends StatefulWidget {
  const LatestNewsWidget({
    super.key,
    required this.title,
    required this.image1,
    required this.author,
    required this.timeStamp,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.content1,
    required this.content2,
    required this.content3,
    required this.image2,
    required this.image3,
    required this.authorProfileImage,
    this.cathegories,
  });

  final String? title;
  final String? image1;
  final String? author;
  final DateTime? timeStamp;
  final String? subtitle1;
  final String? subtitle2;
  final String? subtitle3;
  final String? content1;
  final String? content2;
  final String? content3;
  final String? image2;
  final String? image3;
  final String? authorProfileImage;
  final List<String>? cathegories;

  @override
  State<LatestNewsWidget> createState() => _LatestNewsWidgetState();
}

class _LatestNewsWidgetState extends State<LatestNewsWidget> {
  late LatestNewsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LatestNewsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent1,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, -1.0),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(8.0),
                  bottomRight: Radius.circular(8.0),
                  topLeft: Radius.circular(8.0),
                  topRight: Radius.circular(8.0),
                ),
                child: CachedNetworkImage(
                  fadeInDuration: const Duration(milliseconds: 250),
                  fadeOutDuration: const Duration(milliseconds: 250),
                  imageUrl: valueOrDefault<String>(
                    widget.image1,
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/mwu9q4rpsdxp/FL_3.jpeg',
                  ),
                  width: double.infinity,
                  height: 160.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 24.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Icon(
                          Icons.grid_on_rounded,
                          color: FlutterFlowTheme.of(context).secondary,
                          size: 24.0,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '924ol2sa' /* FL News */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).secondary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'LATEST_NEWS_COMP_gradientBorder_ON_TAP');
                          logFirebaseEvent('gradientBorder_navigate_to');

                          context.pushNamed(
                            'ArticleDetails',
                            queryParameters: {
                              'title': serializeParam(
                                widget.title,
                                ParamType.String,
                              ),
                              'author': serializeParam(
                                widget.author,
                                ParamType.String,
                              ),
                              'image1': serializeParam(
                                widget.image1,
                                ParamType.String,
                              ),
                              'timeStamp': serializeParam(
                                widget.timeStamp,
                                ParamType.DateTime,
                              ),
                              'subtitle1': serializeParam(
                                widget.subtitle1,
                                ParamType.String,
                              ),
                              'subtitle2': serializeParam(
                                widget.subtitle2,
                                ParamType.String,
                              ),
                              'subtitle3': serializeParam(
                                widget.subtitle3,
                                ParamType.String,
                              ),
                              'content1': serializeParam(
                                widget.content1,
                                ParamType.String,
                              ),
                              'content2': serializeParam(
                                widget.content2,
                                ParamType.String,
                              ),
                              'content3': serializeParam(
                                widget.content3,
                                ParamType.String,
                              ),
                              'image2': serializeParam(
                                widget.image2,
                                ParamType.String,
                              ),
                              'image3': serializeParam(
                                widget.image3,
                                ParamType.String,
                              ),
                              'auhtorProfileImage': serializeParam(
                                widget.authorProfileImage,
                                ParamType.String,
                              ),
                              'cathegories': serializeParam(
                                widget.cathegories,
                                ParamType.String,
                                isList: true,
                              ),
                            }.withoutNulls,
                          );

                          logFirebaseEvent('gradientBorder_haptic_feedback');
                          HapticFeedback.lightImpact();
                        },
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).secondary,
                                FlutterFlowTheme.of(context).alternate
                              ],
                              stops: const [0.0, 0.3, 1.0],
                              begin: const AlignmentDirectional(1.0, 0.98),
                              end: const AlignmentDirectional(-1.0, -0.98),
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.chevron_right_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 32.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
              child: AutoSizeText(
                valueOrDefault<String>(
                  widget.title,
                  'NA',
                ),
                maxLines: 2,
                minFontSize: 8.0,
                style: FlutterFlowTheme.of(context).titleLarge.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  'By ${valueOrDefault<String>(
                    widget.author,
                    'Unkown author',
                  )}',
                  'NA',
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).alternate,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1620577438168-b2079ab90f86?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBvY3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      's8q4n8wn' /* 16 friends viewed */,
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).accent4,
                          letterSpacing: 0.0,
                        ),
                  ),
                  Expanded(
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '9n5qh0v8' /* View related topics */,
                      ),
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primary,
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
