import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_update_score2_widget.dart' show AdminUpdateScore2Widget;
import 'package:flutter/material.dart';

class AdminUpdateScore2Model extends FlutterFlowModel<AdminUpdateScore2Widget> {
  ///  Local state fields for this page.

  String docRefHere = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Bottom Sheet - ChooseBestPlayers] action in Container widget.
  List<String>? userRefSelected;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  MatchResultsRecord? docRef2;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ResultsRecord? docRef1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
