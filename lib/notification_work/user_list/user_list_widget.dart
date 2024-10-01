import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/notification_work/user_list_small/user_list_small_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'user_list_model.dart';
export 'user_list_model.dart';

class UserListWidget extends StatefulWidget {
  const UserListWidget({
    super.key,
    this.selectedUsers2,
  });

  final Future Function(List<DocumentReference> pageStateUpdate)?
      selectedUsers2;

  @override
  State<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends State<UserListWidget> {
  late UserListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 16.0),
          child: Container(
            width: double.infinity,
            constraints: const BoxConstraints(
              maxHeight: 500.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 4.0,
                  color: Color(0x33000000),
                  offset: Offset(
                    0.0,
                    2.0,
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 4.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'hnoxn2rm' /* Assign Player */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Outfit',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 8.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'qsf1mqry' /* Select players from the list b... */,
                      ),
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      AuthUserStreamWidget(
                        builder: (context) => StreamBuilder<List<UserRecord>>(
                          stream: queryUserRecord(
                            queryBuilder: (userRecord) => userRecord.where(
                              'studentTeam',
                              isEqualTo: valueOrDefault(
                                  currentUserDocument?.facultyTeam, ''),
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitThreeBounce(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<UserRecord> checkboxUserRecordList =
                                snapshot.data!;

                            return Theme(
                              data: ThemeData(
                                checkboxTheme: CheckboxThemeData(
                                  visualDensity: VisualDensity.compact,
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                unselectedWidgetColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                              child: Checkbox(
                                value: _model.checkboxValue ??= false,
                                onChanged: (newValue) async {
                                  safeSetState(
                                      () => _model.checkboxValue = newValue!);
                                },
                                side: BorderSide(
                                  width: 2,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                                activeColor:
                                    FlutterFlowTheme.of(context).accent1,
                                checkColor: FlutterFlowTheme.of(context).info,
                              ),
                            );
                          },
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'o0r50bj0' /* Select All */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].addToStart(const SizedBox(width: 10.0)),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => FutureBuilder<List<UserRecord>>(
                          future: queryUserRecordOnce(
                            queryBuilder: (userRecord) => userRecord.where(
                              'studentTeam',
                              isEqualTo: valueOrDefault(
                                          currentUserDocument?.facultyTeam,
                                          '') !=
                                      ''
                                  ? valueOrDefault(
                                      currentUserDocument?.facultyTeam, '')
                                  : null,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: SpinKitThreeBounce(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 50.0,
                                  ),
                                ),
                              );
                            }
                            List<UserRecord> listViewUserRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUserRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUserRecord =
                                    listViewUserRecordList[listViewIndex];
                                return Visibility(
                                  visible: _model.selectedUsers.contains(
                                          listViewUserRecord.reference) ==
                                      false,
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'USER_LIST_COMP_Container_r4p2iak3_ON_TAP');
                                      logFirebaseEvent(
                                          'user_ListSmall_update_component_state');
                                      _model.addToSelectedUsers(
                                          listViewUserRecord.reference);
                                      _model.addToSelectedUserName(
                                          listViewUserRecord.displayName);
                                      safeSetState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.userListSmallModels.getModel(
                                        listViewUserRecord.uid,
                                        listViewIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: UserListSmallWidget(
                                        key: Key(
                                          'Keyr4p_${listViewUserRecord.uid}',
                                        ),
                                        userRef: listViewUserRecord,
                                        action: () async {},
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  if (_model.selectedUsers.isNotEmpty)
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'vjz4zuis' /* Selected Players: */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'USER_LIST_COMP_Row_8fyemffe_ON_TAP');
                                  logFirebaseEvent(
                                      'Row_update_component_state');
                                  _model.selectedUsers = [];
                                  _model.selectedUserName = [];
                                  safeSetState(() {});
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Icon(
                                      Icons.restart_alt,
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      size: 24.0,
                                    ),
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'bkc2iejf' /* Deselect All */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 5.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  if (_model.selectedUsers.isNotEmpty)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final selectedUserList =
                              _model.selectedUserName.toList();

                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(selectedUserList.length,
                                      (selectedUserListIndex) {
                                final selectedUserListItem =
                                    selectedUserList[selectedUserListIndex];
                                return AnimatedContainer(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(24.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 10.0, 0.0),
                                      child: Text(
                                        selectedUserListItem,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                );
                              })
                                  .divide(const SizedBox(width: 10.0))
                                  .addToStart(const SizedBox(width: 10.0))
                                  .addToEnd(const SizedBox(width: 10.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  Divider(
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 150),
                    curve: Curves.easeInOut,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MouseRegion(
                            opaque: false,
                            cursor: MouseCursor.defer ?? MouseCursor.defer,
                            onEnter: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegion1Hovered = true);
                            }),
                            onExit: ((event) async {
                              safeSetState(
                                  () => _model.mouseRegion1Hovered = false);
                            }),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'USER_LIST_COMP_Container_lv48lgr0_ON_TAP');
                                logFirebaseEvent('Container_bottom_sheet');
                                Navigator.pop(context, _model.selectedUsers);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: _model.mouseRegion1Hovered
                                      ? FlutterFlowTheme.of(context)
                                          .primaryBackground
                                      : FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 16.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'yltpyge3' /* Confirm */,
                                      ),
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: MouseRegion(
                              opaque: false,
                              cursor: MouseCursor.defer ?? MouseCursor.defer,
                              onEnter: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegion2Hovered = true);
                              }),
                              onExit: ((event) async {
                                safeSetState(
                                    () => _model.mouseRegion2Hovered = false);
                              }),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'USER_LIST_COMP_Container_vp64h641_ON_TAP');
                                        logFirebaseEvent(
                                            'Container_bottom_sheet');
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: _model.mouseRegion2Hovered
                                              ? FlutterFlowTheme.of(context)
                                                  .primaryBackground
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'o6zknnpf' /* Cancel */,
                                              ),
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
