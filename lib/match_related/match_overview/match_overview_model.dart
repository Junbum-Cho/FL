import '/components/tentative_instagram_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/latest_components/latest_video/latest_video_widget.dart';
import '/match_related/comment/comment_widget.dart';
import 'match_overview_widget.dart' show MatchOverviewWidget;
import 'package:flutter/material.dart';

class MatchOverviewModel extends FlutterFlowModel<MatchOverviewWidget> {
  ///  Local state fields for this page.

  String schoolOneNameShorten = 'NA';

  String schoolTwoNameShorten = 'NA';

  double commentLength = 1.0;

  int? numlist;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel1;
  // Model for LatestVideo component.
  late LatestVideoModel latestVideoModel2;
  // Model for TentativeInstagramView component.
  late TentativeInstagramViewModel tentativeInstagramViewModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for Comment dynamic component.
  late FlutterFlowDynamicModels<CommentModel> commentModels;

  @override
  void initState(BuildContext context) {
    latestVideoModel1 = createModel(context, () => LatestVideoModel());
    latestVideoModel2 = createModel(context, () => LatestVideoModel());
    tentativeInstagramViewModel =
        createModel(context, () => TentativeInstagramViewModel());
    commentModels = FlutterFlowDynamicModels(() => CommentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    latestVideoModel1.dispose();
    latestVideoModel2.dispose();
    tentativeInstagramViewModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    commentModels.dispose();
  }
}
