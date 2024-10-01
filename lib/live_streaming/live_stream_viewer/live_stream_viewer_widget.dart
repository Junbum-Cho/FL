import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'live_stream_viewer_model.dart';
export 'live_stream_viewer_model.dart';

class LiveStreamViewerWidget extends StatefulWidget {
  const LiveStreamViewerWidget({
    super.key,
    required this.url,
  });

  final String? url;

  @override
  State<LiveStreamViewerWidget> createState() => _LiveStreamViewerWidgetState();
}

class _LiveStreamViewerWidgetState extends State<LiveStreamViewerWidget> {
  late LiveStreamViewerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LiveStreamViewerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'LiveStreamViewer'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'LiveStreamViewer',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).accent1,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 65.0,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('LIVE_STREAM_VIEWER_arrow_back_ios_rounde');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'chzd2hb7' /* Archived Videos */,
                ),
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: const [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowVideoPlayer(
                    path: widget.url!,
                    videoType: VideoType.network,
                    width: double.infinity,
                    autoPlay: false,
                    looping: false,
                    showControls: true,
                    allowFullScreen: true,
                    allowPlaybackSpeedMenu: false,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
