import '/f_l_bar/option2/option2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'each_school_profile_widget.dart' show EachSchoolProfileWidget;
import 'package:flutter/material.dart';

class EachSchoolProfileModel extends FlutterFlowModel<EachSchoolProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for Option2 component.
  late Option2Model option2Model1;
  // Model for Option2 component.
  late Option2Model option2Model2;

  @override
  void initState(BuildContext context) {
    option2Model1 = createModel(context, () => Option2Model());
    option2Model2 = createModel(context, () => Option2Model());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    option2Model1.dispose();
    option2Model2.dispose();
  }
}
