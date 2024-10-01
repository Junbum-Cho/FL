import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'upcoming_matches_copy_model.dart';
export 'upcoming_matches_copy_model.dart';

class UpcomingMatchesCopyWidget extends StatefulWidget {
  const UpcomingMatchesCopyWidget({
    super.key,
    required this.sportsName,
    required this.date,
    required this.time,
    required this.schoolLogo,
  });

  final String? sportsName;
  final String? date;
  final String? time;
  final String? schoolLogo;

  @override
  State<UpcomingMatchesCopyWidget> createState() =>
      _UpcomingMatchesCopyWidgetState();
}

class _UpcomingMatchesCopyWidgetState extends State<UpcomingMatchesCopyWidget> {
  late UpcomingMatchesCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpcomingMatchesCopyModel());

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
        height: 80.0,
        constraints: const BoxConstraints(
          maxHeight: 115.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Stack(
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.sportsName,
                            'NA',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 23.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 35.0, 0.0, 0.0),
                        child: Text(
                          '${widget.date}, ${widget.time}',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Outfit',
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: Container(
                          width: 55.0,
                          height: 55.0,
                          constraints: const BoxConstraints(
                            maxHeight: 80.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 200),
                              fadeOutDuration: const Duration(milliseconds: 200),
                              imageUrl: widget.schoolLogo!,
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.contain,
                            ),
                          ),
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
    );
  }
}
