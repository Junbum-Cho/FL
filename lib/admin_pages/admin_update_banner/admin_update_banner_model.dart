import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_update_banner_widget.dart' show AdminUpdateBannerWidget;
import 'package:flutter/material.dart';

class AdminUpdateBannerModel extends FlutterFlowModel<AdminUpdateBannerWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SpecialArticlesRecord? docReference1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SpecialArticleContentsRecord? docReference2;

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
