import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'latest_articles2_model.dart';
export 'latest_articles2_model.dart';

class LatestArticles2Widget extends StatefulWidget {
  const LatestArticles2Widget({
    super.key,
    String? title,
    String? author,
    required this.timeStamp,
    String? image1,
    required this.image2,
    required this.image3,
    required this.subtitle1,
    required this.subtitle2,
    required this.subtitle3,
    required this.content1,
    required this.content2,
    required this.content3,
  })  : title = title ?? 'NA',
        author = author ?? 'NA',
        image1 = image1 ?? 'NA';

  final String title;
  final String author;
  final DateTime? timeStamp;
  final String image1;
  final String? image2;
  final String? image3;
  final String? subtitle1;
  final String? subtitle2;
  final String? subtitle3;
  final String? content1;
  final String? content2;
  final String? content3;

  @override
  State<LatestArticles2Widget> createState() => _LatestArticles2WidgetState();
}

class _LatestArticles2WidgetState extends State<LatestArticles2Widget> {
  late LatestArticles2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LatestArticles2Model());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x44111417),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent1,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).accent1,
                    width: 1.0,
                  ),
                ),
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: CachedNetworkImage(
                        fadeInDuration: const Duration(milliseconds: 500),
                        fadeOutDuration: const Duration(milliseconds: 500),
                        imageUrl: widget.image1,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
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
                      Align(
                        alignment: const AlignmentDirectional(-1.0, -1.0),
                        child: AutoSizeText(
                          widget.title,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          minFontSize: 14.0,
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Outfit',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 3.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.account_circle_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'By ${widget.author}',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.timer_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 16.0,
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  dateTimeFormat(
                                    "relative",
                                    widget.timeStamp,
                                    locale: FFLocalizations.of(context)
                                        .languageCode,
                                  ),
                                  'NA',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
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
            ],
          ),
        ),
      ),
    );
  }
}
