import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'livestream_lists_widget.dart' show LivestreamListsWidget;
import 'package:flutter/material.dart';

class LivestreamListsModel extends FlutterFlowModel<LivestreamListsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getLiveStreamID)] action in menuItem widget.
  ApiCallResponse? liveStreamID;
  // Stores action output result for [Backend Call - API (getPastLiveStream)] action in menuItem widget.
  ApiCallResponse? apiResultw2i;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
