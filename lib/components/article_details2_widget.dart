import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'article_details2_model.dart';
export 'article_details2_model.dart';

class ArticleDetails2Widget extends StatefulWidget {
  const ArticleDetails2Widget({
    super.key,
    required this.image,
    required this.title,
    required this.author,
    required this.timestamp,
  });

  final String? image;
  final String? title;
  final String? author;
  final DateTime? timestamp;

  @override
  State<ArticleDetails2Widget> createState() => _ArticleDetails2WidgetState();
}

class _ArticleDetails2WidgetState extends State<ArticleDetails2Widget> {
  late ArticleDetails2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArticleDetails2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    fadeInDuration: const Duration(milliseconds: 500),
                    fadeOutDuration: const Duration(milliseconds: 500),
                    imageUrl: widget.image!,
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      valueOrDefault<String>(
                        widget.title,
                        'NA',
                      ).maybeHandleOverflow(
                        maxChars: 70,
                        replacement: '…',
                      ),
                      maxLines: 3,
                      minFontSize: 12.0,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 12.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.author,
                                'Unknown Writer',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 4.0, 0.0),
                            child: Icon(
                              Icons.chat_bubble_outline_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '1lmvklkz' /* 24 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              dateTimeFormat(
                                "relative",
                                widget.timestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 4.0, 0.0),
                            child: Icon(
                              Icons.keyboard_control_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'x9y9fa54' /* Read Now */,
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
