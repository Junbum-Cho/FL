import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_game_widget.dart' show AddGameWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddGameModel extends FlutterFlowModel<AddGameWidget> {
  ///  Local state fields for this page.

  DateTime? selectedDateForGoogle;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for task widget.
  String? taskValue;
  FormFieldController<String>? taskValueController;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DynamicSchedulesRecord? docReference1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  EventsRecord? docReference2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationFocusNode?.dispose();
    locationTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();
  }
}
