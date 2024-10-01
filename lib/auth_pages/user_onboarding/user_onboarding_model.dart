import '/flutter_flow/flutter_flow_util.dart';
import 'user_onboarding_widget.dart' show UserOnboardingWidget;
import 'package:flutter/material.dart';

class UserOnboardingModel extends FlutterFlowModel<UserOnboardingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
