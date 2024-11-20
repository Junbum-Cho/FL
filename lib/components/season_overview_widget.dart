import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'season_overview_model.dart';
export 'season_overview_model.dart';

class SeasonOverviewWidget extends StatefulWidget {
  const SeasonOverviewWidget({
    super.key,
    required this.num1,
    required this.num2,
    required this.text,
  });

  final String? num1;
  final String? num2;
  final String? text;

  @override
  State<SeasonOverviewWidget> createState() => _SeasonOverviewWidgetState();
}

class _SeasonOverviewWidgetState extends State<SeasonOverviewWidget> {
  late SeasonOverviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SeasonOverviewModel());

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
      width: 390.0,
      height: 60.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 1.5,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.num1,
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).accent1,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.text,
                'NA',
              ),
              style: FlutterFlowTheme.of(context).titleLarge.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).accent1,
                    fontSize: 18.0,
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.num2,
                  '-',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).accent1,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
