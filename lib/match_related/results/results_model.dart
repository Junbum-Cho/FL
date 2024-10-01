import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'results_widget.dart' show ResultsWidget;
import 'package:flutter/material.dart';

class ResultsModel extends FlutterFlowModel<ResultsWidget> {
  ///  Local state fields for this page.

  DocumentReference? currentSchool;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for DropDownFall widget.
  String? dropDownFallValue;
  FormFieldController<String>? dropDownFallValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDownWinter widget.
  String? dropDownWinterValue;
  FormFieldController<String>? dropDownWinterValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for DropDownSpring widget.
  String? dropDownSpringValue;
  FormFieldController<String>? dropDownSpringValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
