import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_match_schedule_widget.dart' show AdminMatchScheduleWidget;
import 'package:flutter/material.dart';

class AdminMatchScheduleModel
    extends FlutterFlowModel<AdminMatchScheduleWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> teamPlayers = [];
  void addToTeamPlayers(DocumentReference item) => teamPlayers.add(item);
  void removeFromTeamPlayers(DocumentReference item) =>
      teamPlayers.remove(item);
  void removeAtIndexFromTeamPlayers(int index) => teamPlayers.removeAt(index);
  void insertAtIndexInTeamPlayers(int index, DocumentReference item) =>
      teamPlayers.insert(index, item);
  void updateTeamPlayersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      teamPlayers[index] = updateFn(teamPlayers[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in AdminMatchSchedule widget.
  List<UserRecord>? teamPlayersRefs;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
