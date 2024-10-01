import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'student_score_model.dart';
export 'student_score_model.dart';

class StudentScoreWidget extends StatefulWidget {
  const StudentScoreWidget({
    super.key,
    required this.goalType,
    required this.goalIcon,
    required this.studentName,
  });

  final String? goalType;
  final Widget? goalIcon;
  final String? studentName;

  @override
  State<StudentScoreWidget> createState() => _StudentScoreWidgetState();
}

class _StudentScoreWidgetState extends State<StudentScoreWidget> {
  late StudentScoreModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StudentScoreModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 5.0),
      child: Container(
        width: 130.0,
        height: 57.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.goalType,
                      'NA',
                    ),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).accent1,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 0.0, 0.0),
                  child: Icon(
                    Icons.sports_soccer,
                    color: FlutterFlowTheme.of(context).accent1,
                    size: 15.0,
                  ),
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.studentName,
                    'NA',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).accent1,
                        fontSize: 13.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
