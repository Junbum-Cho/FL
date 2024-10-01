import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_add_players_widget.dart' show AdminAddPlayersWidget;
import 'package:flutter/material.dart';

class AdminAddPlayersModel extends FlutterFlowModel<AdminAddPlayersWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UserRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
