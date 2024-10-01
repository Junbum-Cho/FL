import '/admin_components/admin_team_player_list/admin_team_player_list_widget.dart';
import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'admine_team_player_list_model.dart';
export 'admine_team_player_list_model.dart';

class AdmineTeamPlayerListWidget extends StatefulWidget {
  const AdmineTeamPlayerListWidget({super.key});

  @override
  State<AdmineTeamPlayerListWidget> createState() =>
      _AdmineTeamPlayerListWidgetState();
}

class _AdmineTeamPlayerListWidgetState
    extends State<AdmineTeamPlayerListWidget> {
  late AdmineTeamPlayerListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdmineTeamPlayerListModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdmineTeamPlayerList'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'AdmineTeamPlayerList',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0),
              child: AppBar(
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                automaticallyImplyLeading: false,
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: FlutterFlowTheme.of(context).accent1,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'ADMINE_TEAM_PLAYER_LIST_arrow_back_ios_r');
                                logFirebaseEvent('IconButton_navigate_back');
                                context.pop();
                              },
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: const AlignmentDirectional(0.75, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'ADMINE_TEAM_PLAYER_LIST_Icon_nfvgycts_ON');
                                  logFirebaseEvent('Icon_navigate_to');

                                  context.pushNamed('AdminAddPlayers');
                                },
                                child: Icon(
                                  Icons.add_circle,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 35.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 14.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'a9xx56tx' /* My Team */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context).accent1,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              1.0,
                            ),
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 12.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'goz711jg' /* Manage your team below. */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 0.0, 0.0),
                      child: AuthUserStreamWidget(
                        builder: (context) => StreamBuilder<List<UserRecord>>(
                          stream: queryUserRecord(
                            queryBuilder: (userRecord) => userRecord
                                .where(
                                  'userSchool',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.userSchool, ''),
                                )
                                .where(
                                  'studentTeam',
                                  isEqualTo: valueOrDefault(
                                      currentUserDocument?.facultyTeam, ''),
                                )
                                .orderBy('display_name', descending: true),
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
                            List<UserRecord> listViewUserRecordList = snapshot
                                .data!
                                .where((u) => u.uid != currentUserUid)
                                .toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewUserRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewUserRecord =
                                    listViewUserRecordList[listViewIndex];
                                return AdminTeamPlayerListWidget(
                                  key: Key(
                                      'Keyvmw_${listViewIndex}_of_${listViewUserRecordList.length}'),
                                  playerName: listViewUserRecord.displayName,
                                  playerEmail: listViewUserRecord.email,
                                  playerProfileImage:
                                      listViewUserRecord.photoUrl,
                                  playerDocRef: listViewUserRecord.reference,
                                  optionSelected: false,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
