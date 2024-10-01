import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'admin_activity_list_model.dart';
export 'admin_activity_list_model.dart';

class AdminActivityListWidget extends StatefulWidget {
  const AdminActivityListWidget({
    super.key,
    required this.actionTitle,
    required this.actionDescription,
    required this.facultySport,
  });

  final String? actionTitle;
  final String? actionDescription;
  final String? facultySport;

  @override
  State<AdminActivityListWidget> createState() =>
      _AdminActivityListWidgetState();
}

class _AdminActivityListWidgetState extends State<AdminActivityListWidget> {
  late AdminActivityListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminActivityListModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 12.0),
      child: Container(
        width: double.infinity,
        height: 110.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x34090F13),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.actionTitle,
                      'Unknown Activity',
                    ),
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Outfit',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Icon(
                        Icons.arrow_right_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                    child: AutoSizeText(
                      valueOrDefault<String>(
                        widget.actionDescription,
                        'NA',
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      minFontSize: 10.0,
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                            lineHeight: 0.0,
                          ),
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
