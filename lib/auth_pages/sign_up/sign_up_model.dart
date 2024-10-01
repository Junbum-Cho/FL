import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  Local state fields for this page.

  String email = 'NA';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;
  // State field(s) for emailAddress_Create_three widget.
  FocusNode? emailAddressCreateThreeFocusNode;
  TextEditingController? emailAddressCreateThreeTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateThreeTextControllerValidator;
  // State field(s) for password_Create_three widget.
  FocusNode? passwordCreateThreeFocusNode;
  TextEditingController? passwordCreateThreeTextController;
  late bool passwordCreateThreeVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateThreeTextControllerValidator;
  // State field(s) for passwordConfirm_three widget.
  FocusNode? passwordConfirmThreeFocusNode;
  TextEditingController? passwordConfirmThreeTextController;
  late bool passwordConfirmThreeVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmThreeTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
    passwordCreateThreeVisibility = false;
    passwordConfirmThreeVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();

    emailAddressCreateThreeFocusNode?.dispose();
    emailAddressCreateThreeTextController?.dispose();

    passwordCreateThreeFocusNode?.dispose();
    passwordCreateThreeTextController?.dispose();

    passwordConfirmThreeFocusNode?.dispose();
    passwordConfirmThreeTextController?.dispose();
  }
}
