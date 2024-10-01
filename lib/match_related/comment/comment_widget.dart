import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'comment_model.dart';
export 'comment_model.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget({
    super.key,
    required this.commenterName,
    required this.commentContent,
    required this.timeAgo,
    required this.profileImage,
    required this.commentTimestamp,
  });

  final String? commenterName;
  final String? commentContent;
  final String? timeAgo;
  final String? profileImage;
  final DateTime? commentTimestamp;

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  late CommentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommentModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(
          0,
          12.0,
          0,
          12.0,
        ),
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.network(
                          widget.profileImage!,
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.commenterName,
                              'NA',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            valueOrDefault<String>(
                              widget.timeAgo,
                              '2',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ],
                      ),
                    ),
                    FlutterFlowIconButton(
                      borderColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 36.0,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      hoverColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      icon: Icon(
                        Icons.keyboard_control,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ].divide(const SizedBox(width: 12.0)),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.commentContent,
                    'NA',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Readex Pro',
                        letterSpacing: 0.0,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dateTimeFormat(
                        "relative",
                        widget.commentTimestamp,
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ].divide(const SizedBox(width: 8.0)),
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ].divide(const SizedBox(height: 8.0)),
            ),
          ),
        ].divide(const SizedBox(height: 12.0)),
      ),
    );
  }
}
