import '/f_l_bar/f_l_table/f_l_table_widget.dart';
import '/f_l_bar/option2/option2_widget.dart';
import '/f_l_bar/options/options_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fl_widget.dart' show FlWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class FlModel extends FlutterFlowModel<FlWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? fLWalkThroughController;
  // Model for Options component.
  late OptionsModel optionsModel1;
  // Model for Options component.
  late OptionsModel optionsModel2;
  // Model for Options component.
  late OptionsModel optionsModel3;
  // Model for Options component.
  late OptionsModel optionsModel4;
  // Model for FLTable component.
  late FLTableModel fLTableModel;
  // Model for Option2 component.
  late Option2Model option2Model1;
  // Model for Option2 component.
  late Option2Model option2Model2;
  // Model for Option2 component.
  late Option2Model option2Model3;
  // Model for Option2 component.
  late Option2Model option2Model4;
  // Model for Option2 component.
  late Option2Model option2Model5;
  // Model for Option2 component.
  late Option2Model option2Model6;
  // Model for Option2 component.
  late Option2Model option2Model7;

  @override
  void initState(BuildContext context) {
    optionsModel1 = createModel(context, () => OptionsModel());
    optionsModel2 = createModel(context, () => OptionsModel());
    optionsModel3 = createModel(context, () => OptionsModel());
    optionsModel4 = createModel(context, () => OptionsModel());
    fLTableModel = createModel(context, () => FLTableModel());
    option2Model1 = createModel(context, () => Option2Model());
    option2Model2 = createModel(context, () => Option2Model());
    option2Model3 = createModel(context, () => Option2Model());
    option2Model4 = createModel(context, () => Option2Model());
    option2Model5 = createModel(context, () => Option2Model());
    option2Model6 = createModel(context, () => Option2Model());
    option2Model7 = createModel(context, () => Option2Model());
  }

  @override
  void dispose() {
    fLWalkThroughController?.finish();
    optionsModel1.dispose();
    optionsModel2.dispose();
    optionsModel3.dispose();
    optionsModel4.dispose();
    fLTableModel.dispose();
    option2Model1.dispose();
    option2Model2.dispose();
    option2Model3.dispose();
    option2Model4.dispose();
    option2Model5.dispose();
    option2Model6.dispose();
    option2Model7.dispose();
  }
}
