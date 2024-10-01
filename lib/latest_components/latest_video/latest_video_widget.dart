import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'latest_video_model.dart';
export 'latest_video_model.dart';

class LatestVideoWidget extends StatefulWidget {
  const LatestVideoWidget({
    super.key,
    required this.videoTitle,
    required this.videoLength,
    required this.videoImage,
  });

  final String? videoTitle;
  final int? videoLength;
  final String? videoImage;

  @override
  State<LatestVideoWidget> createState() => _LatestVideoWidgetState();
}

class _LatestVideoWidgetState extends State<LatestVideoWidget> {
  late LatestVideoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LatestVideoModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x230E151B),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(0.0),
                topLeft: Radius.circular(12.0),
                topRight: Radius.circular(0.0),
              ),
              child: CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 200),
                fadeOutDuration: const Duration(milliseconds: 200),
                imageUrl: widget.videoImage!,
                width: 120.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.9, 0.85),
              child: Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x230E151B),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(130.0, 0.0, 12.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    valueOrDefault<String>(
                      widget.videoTitle,
                      'NA',
                    ),
                    maxLines: 2,
                    minFontSize: 10.0,
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                    child: Text(
                      '${valueOrDefault<String>(
                        widget.videoLength?.toString(),
                        '0',
                      )} Min',
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(1.0, -1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset(
                            'assets/images/AOF_Logo.png',
                            width: 32.0,
                            height: 32.0,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            't5cw4b6y' /* AOF Media */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
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
