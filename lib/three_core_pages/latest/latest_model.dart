import '/components/news_block_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/latest_components/latest_news/latest_news_widget.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import 'latest_widget.dart' show LatestWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LatestModel extends FlutterFlowModel<LatestWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? latestPageWalkThroughController;
  // Model for LatestNews component.
  late LatestNewsModel latestNewsModel;
  // Model for NewsBlock component.
  late NewsBlockModel newsBlockModel;
  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel1;
  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel2;
  String currentPageLink = '';
  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel3;

  @override
  void initState(BuildContext context) {
    latestNewsModel = createModel(context, () => LatestNewsModel());
    newsBlockModel = createModel(context, () => NewsBlockModel());
    latestVideoModel1 = createModel(context, () => LatestVideoModel());
    latestVideoModel2 = createModel(context, () => LatestVideoModel());
    latestVideoModel3 = createModel(context, () => LatestVideoModel());
  }

  @override
  void dispose() {
    latestPageWalkThroughController?.finish();
    latestNewsModel.dispose();
    newsBlockModel.dispose();
    latestVideoModel1.dispose();
    latestVideoModel2.dispose();
    latestVideoModel3.dispose();
  }
}
