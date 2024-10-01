import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for studentTeam widget.
  FocusNode? studentTeamFocusNode;
  TextEditingController? studentTeamTextController;
  String? Function(BuildContext, String?)? studentTeamTextControllerValidator;
  // State field(s) for facultyTeam widget.
  FocusNode? facultyTeamFocusNode;
  TextEditingController? facultyTeamTextController;
  String? Function(BuildContext, String?)? facultyTeamTextControllerValidator;
  // State field(s) for school widget.
  String? schoolValue;
  FormFieldController<String>? schoolValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    studentTeamFocusNode?.dispose();
    studentTeamTextController?.dispose();

    facultyTeamFocusNode?.dispose();
    facultyTeamTextController?.dispose();
  }
}
