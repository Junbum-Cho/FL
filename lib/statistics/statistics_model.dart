import '/components/tentative_instagram_view_widget.dart';
import '/f_l_bar/option2/option2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'statistics_widget.dart' show StatisticsWidget;
import 'package:flutter/material.dart';

class StatisticsModel extends FlutterFlowModel<StatisticsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Option2 component.
  late Option2Model option2Model1;
  // Model for Option2 component.
  late Option2Model option2Model2;
  // Model for Option2 component.
  late Option2Model option2Model3;
  // Model for TentativeInstagramView component.
  late TentativeInstagramViewModel tentativeInstagramViewModel1;
  // Model for TentativeInstagramView component.
  late TentativeInstagramViewModel tentativeInstagramViewModel2;
  // Model for TentativeInstagramView component.
  late TentativeInstagramViewModel tentativeInstagramViewModel3;

  @override
  void initState(BuildContext context) {
    option2Model1 = createModel(context, () => Option2Model());
    option2Model2 = createModel(context, () => Option2Model());
    option2Model3 = createModel(context, () => Option2Model());
    tentativeInstagramViewModel1 =
        createModel(context, () => TentativeInstagramViewModel());
    tentativeInstagramViewModel2 =
        createModel(context, () => TentativeInstagramViewModel());
    tentativeInstagramViewModel3 =
        createModel(context, () => TentativeInstagramViewModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    option2Model1.dispose();
    option2Model2.dispose();
    option2Model3.dispose();
    tentativeInstagramViewModel1.dispose();
    tentativeInstagramViewModel2.dispose();
    tentativeInstagramViewModel3.dispose();
  }
}
