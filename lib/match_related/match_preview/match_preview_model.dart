import '/components/season_overview_widget.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import 'match_preview_widget.dart' show MatchPreviewWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class MatchPreviewModel extends FlutterFlowModel<MatchPreviewWidget> {
  ///  Local state fields for this page.

  String schoolTwo1 = 'NA';

  String schoolOne = 'NA';

  double? commentLength;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(0, milliSecond: false);
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel;
  // Model for SeasonOverview component.
  late SeasonOverviewModel seasonOverviewModel1;
  // Model for SeasonOverview component.
  late SeasonOverviewModel seasonOverviewModel2;
  // Model for SeasonOverview component.
  late SeasonOverviewModel seasonOverviewModel3;
  // Model for SeasonOverview component.
  late SeasonOverviewModel seasonOverviewModel4;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    latestVideoModel = createModel(context, () => LatestVideoModel());
    seasonOverviewModel1 = createModel(context, () => SeasonOverviewModel());
    seasonOverviewModel2 = createModel(context, () => SeasonOverviewModel());
    seasonOverviewModel3 = createModel(context, () => SeasonOverviewModel());
    seasonOverviewModel4 = createModel(context, () => SeasonOverviewModel());
  }

  @override
  void dispose() {
    timerController.dispose();
    tabBarController?.dispose();
    latestVideoModel.dispose();
    seasonOverviewModel1.dispose();
    seasonOverviewModel2.dispose();
    seasonOverviewModel3.dispose();
    seasonOverviewModel4.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
