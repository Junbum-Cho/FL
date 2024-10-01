import '/flutter_flow/flutter_flow_util.dart';
import '/notification_work/user_list_small/user_list_small_widget.dart';
import 'choose_best_players_widget.dart' show ChooseBestPlayersWidget;
import 'package:flutter/material.dart';

class ChooseBestPlayersModel extends FlutterFlowModel<ChooseBestPlayersWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> bestPlayerDocRef = [];
  void addToBestPlayerDocRef(DocumentReference item) =>
      bestPlayerDocRef.add(item);
  void removeFromBestPlayerDocRef(DocumentReference item) =>
      bestPlayerDocRef.remove(item);
  void removeAtIndexFromBestPlayerDocRef(int index) =>
      bestPlayerDocRef.removeAt(index);
  void insertAtIndexInBestPlayerDocRef(int index, DocumentReference item) =>
      bestPlayerDocRef.insert(index, item);
  void updateBestPlayerDocRefAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      bestPlayerDocRef[index] = updateFn(bestPlayerDocRef[index]);

  List<String> bestPlayerName = [];
  void addToBestPlayerName(String item) => bestPlayerName.add(item);
  void removeFromBestPlayerName(String item) => bestPlayerName.remove(item);
  void removeAtIndexFromBestPlayerName(int index) =>
      bestPlayerName.removeAt(index);
  void insertAtIndexInBestPlayerName(int index, String item) =>
      bestPlayerName.insert(index, item);
  void updateBestPlayerNameAtIndex(int index, Function(String) updateFn) =>
      bestPlayerName[index] = updateFn(bestPlayerName[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Models for user_ListSmall dynamic component.
  late FlutterFlowDynamicModels<UserListSmallModel> userListSmallModels;
  // State field(s) for MouseRegion1 widget.
  bool mouseRegion1Hovered = false;
  // State field(s) for MouseRegion2 widget.
  bool mouseRegion2Hovered = false;

  @override
  void initState(BuildContext context) {
    userListSmallModels = FlutterFlowDynamicModels(() => UserListSmallModel());
  }

  @override
  void dispose() {
    userListSmallModels.dispose();
  }
}
