import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'news_block_model.dart';
export 'news_block_model.dart';

class NewsBlockWidget extends StatefulWidget {
  const NewsBlockWidget({
    super.key,
    required this.title,
    required this.image,
    required this.description,
  });

  final String? title;
  final String? image;
  final String? description;

  @override
  State<NewsBlockWidget> createState() => _NewsBlockWidgetState();
}

class _NewsBlockWidgetState extends State<NewsBlockWidget> {
  late NewsBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewsBlockModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 1.0,
              color: FlutterFlowTheme.of(context).primaryText,
            )
          ],
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 106.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF1702E2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 10.0),
                    child: AutoSizeText(
                      valueOrDefault<String>(
                        widget.title,
                        'Unspecified Title',
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      minFontSize: 12.0,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                fontSize: 26.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).accent1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      fadeInDuration: const Duration(milliseconds: 500),
                      fadeOutDuration: const Duration(milliseconds: 500),
                      imageUrl: widget.image!,
                      width: double.infinity,
                      height: 120.0,
                      fit: BoxFit.cover,
                      alignment: const Alignment(0.0, 0.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(16.0, 5.0, 16.0, 16.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.description,
                      'Unspecified Description',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).accent1,
                          letterSpacing: 0.0,
                        ),
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
