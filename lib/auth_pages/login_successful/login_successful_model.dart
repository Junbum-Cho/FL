import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_successful_widget.dart' show LoginSuccessfulWidget;
import 'package:flutter/material.dart';

class LoginSuccessfulModel extends FlutterFlowModel<LoginSuccessfulWidget> {
  ///  Local state fields for this page.

  String authCode = 'default';

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - handleOAuthRedirect] action in LoginSuccessful widget.
  String? redirectURL;
  // Stores action output result for [Custom Action - extractAuthCodeFromUri] action in LoginSuccessful widget.
  String? authCode1;
  // Stores action output result for [Backend Call - API (Veracross Exchange Authorization Token)] action in LoginSuccessful widget.
  ApiCallResponse? apiResultjq8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
