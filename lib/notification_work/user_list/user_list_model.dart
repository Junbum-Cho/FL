import '/flutter_flow/flutter_flow_util.dart';
import '/notification_work/user_list_small/user_list_small_widget.dart';
import 'user_list_widget.dart' show UserListWidget;
import 'package:flutter/material.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  Local state fields for this component.

  List<DocumentReference> selectedUsers = [];
  void addToSelectedUsers(DocumentReference item) => selectedUsers.add(item);
  void removeFromSelectedUsers(DocumentReference item) =>
      selectedUsers.remove(item);
  void removeAtIndexFromSelectedUsers(int index) =>
      selectedUsers.removeAt(index);
  void insertAtIndexInSelectedUsers(int index, DocumentReference item) =>
      selectedUsers.insert(index, item);
  void updateSelectedUsersAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedUsers[index] = updateFn(selectedUsers[index]);

  List<String> selectedUserName = [];
  void addToSelectedUserName(String item) => selectedUserName.add(item);
  void removeFromSelectedUserName(String item) => selectedUserName.remove(item);
  void removeAtIndexFromSelectedUserName(int index) =>
      selectedUserName.removeAt(index);
  void insertAtIndexInSelectedUserName(int index, String item) =>
      selectedUserName.insert(index, item);
  void updateSelectedUserNameAtIndex(int index, Function(String) updateFn) =>
      selectedUserName[index] = updateFn(selectedUserName[index]);

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
