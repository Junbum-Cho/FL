import '/admin_components/admin_activity_list/admin_activity_list_widget.dart';
import '/admin_components/admin_banner/admin_banner_widget.dart';
import '/admin_components/admin_dashboard/admin_dashboard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_activity_widget.dart' show AdminActivityWidget;
import 'package:flutter/material.dart';

class AdminActivityModel extends FlutterFlowModel<AdminActivityWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminBanner component.
  late AdminBannerModel adminBannerModel;
  // Model for AdminDashboard component.
  late AdminDashboardModel adminDashboardModel;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel1;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel2;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel3;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel4;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel5;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel6;
  // Model for AdminActivityList component.
  late AdminActivityListModel adminActivityListModel7;

  @override
  void initState(BuildContext context) {
    adminBannerModel = createModel(context, () => AdminBannerModel());
    adminDashboardModel = createModel(context, () => AdminDashboardModel());
    adminActivityListModel1 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel2 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel3 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel4 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel5 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel6 =
        createModel(context, () => AdminActivityListModel());
    adminActivityListModel7 =
        createModel(context, () => AdminActivityListModel());
  }

  @override
  void dispose() {
    adminBannerModel.dispose();
    adminDashboardModel.dispose();
    adminActivityListModel1.dispose();
    adminActivityListModel2.dispose();
    adminActivityListModel3.dispose();
    adminActivityListModel4.dispose();
    adminActivityListModel5.dispose();
    adminActivityListModel6.dispose();
    adminActivityListModel7.dispose();
  }
}
