import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'walk_through_model.dart';
export 'walk_through_model.dart';

class WalkThroughWidget extends StatefulWidget {
  const WalkThroughWidget({
    super.key,
    required this.icon,
    required this.description,
  });

  final String? icon;
  final String? description;

  @override
  State<WalkThroughWidget> createState() => _WalkThroughWidgetState();
}

class _WalkThroughWidgetState extends State<WalkThroughWidget> {
  late WalkThroughModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WalkThroughModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).secondaryBackground,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 330.0,
        height: 130.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.icon!,
                width: 50.0,
                height: 50.0,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 250.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Text(
                valueOrDefault<String>(
                  widget.description,
                  'NA',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ]
              .divide(const SizedBox(width: 15.0))
              .addToStart(const SizedBox(width: 15.0))
              .addToEnd(const SizedBox(width: 15.0)),
        ),
      ),
    );
  }
}
