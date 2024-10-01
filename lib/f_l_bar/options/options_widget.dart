import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'options_model.dart';
export 'options_model.dart';

class OptionsWidget extends StatefulWidget {
  const OptionsWidget({
    super.key,
    required this.optionIcon,
    required this.optionName,
    required this.optionExplnanation,
  });

  final Widget? optionIcon;
  final String? optionName;
  final String? optionExplnanation;

  @override
  State<OptionsWidget> createState() => _OptionsWidgetState();
}

class _OptionsWidgetState extends State<OptionsWidget> {
  late OptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionsModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 10.0),
      child: Container(
        width: double.infinity,
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
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: widget.optionIcon!,
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 8.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 5.0),
                          child: Stack(
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 10.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.optionName,
                                      'N/A',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  borderRadius: 8.0,
                                  borderWidth: 2.0,
                                  buttonSize: 35.0,
                                  icon: Icon(
                                    Icons.arrow_forward,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    logFirebaseEvent(
                                        'OPTIONS_COMP_arrow_forward_ICN_ON_TAP');
                                    if (widget.optionName == 'Fixtures') {
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed('Fixtures');

                                      logFirebaseEvent(
                                          'IconButton_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                    } else if (widget.optionName ==
                                        'Results') {
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed('Results');

                                      logFirebaseEvent(
                                          'IconButton_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                    } else if (widget.optionName ==
                                        '2024-2025 Season Stats') {
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed(
                                        'Statistics',
                                        queryParameters: {
                                          'mostWinsTeam': serializeParam(
                                            '.',
                                            ParamType.String,
                                          ),
                                          'thisWeekAthlete': serializeParam(
                                            '.',
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );

                                      logFirebaseEvent(
                                          'IconButton_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                    } else if (widget.optionName ==
                                        'Athletic Teams') {
                                      logFirebaseEvent(
                                          'IconButton_navigate_to');

                                      context.pushNamed('AthleticTeams');

                                      logFirebaseEvent(
                                          'IconButton_haptic_feedback');
                                      HapticFeedback.lightImpact();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 8.0,
                          thickness: 3.0,
                          color: Color(0x4D092621),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.optionExplnanation,
                              'NA',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
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
      ),
    );
  }
}
