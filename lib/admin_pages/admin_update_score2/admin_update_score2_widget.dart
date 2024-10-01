import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/match_related/choose_best_players/choose_best_players_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'admin_update_score2_model.dart';
export 'admin_update_score2_model.dart';

class AdminUpdateScore2Widget extends StatefulWidget {
  const AdminUpdateScore2Widget({
    super.key,
    required this.schoolName,
    required this.schoolImage,
    required this.docRef,
    required this.matchDate,
    required this.matchLocation,
    required this.matchDateforID,
  });

  final String? schoolName;
  final String? schoolImage;
  final String? docRef;
  final String? matchDate;
  final String? matchLocation;
  final String? matchDateforID;

  @override
  State<AdminUpdateScore2Widget> createState() =>
      _AdminUpdateScore2WidgetState();
}

class _AdminUpdateScore2WidgetState extends State<AdminUpdateScore2Widget>
    with TickerProviderStateMixin {
  late AdminUpdateScore2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUpdateScore2Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminUpdateScore2'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('ADMIN_UPDATE_SCORE2_AdminUpdateScore2_ON');
      logFirebaseEvent('AdminUpdateScore2_update_page_state');
      _model.docRefHere = widget.docRef!;
      safeSetState(() {});
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 110.0),
            end: const Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title: 'AdminUpdateScore2',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 30.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ADMIN_UPDATE_SCORE2_arrow_back_ios_new_I');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
                  child: FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).alternate,
                    borderRadius: 8.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
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
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 4.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              const Duration(milliseconds: 500),
                                          fadeOutDuration:
                                              const Duration(milliseconds: 500),
                                          imageUrl: valueOrDefault<String>(
                                            widget.schoolImage,
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/6glxp1vk1bfi/The_Hotchkiss_School_Image.jpg',
                                          ),
                                          width: double.infinity,
                                          height: 217.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Game with ${widget.schoolName}',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'pb99lnfy' /* You can update the scores of t... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Text(
                                            FFLocalizations.of(context).getText(
                                              'sotabjxa' /* Enter Score Here */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            FFAppState()
                                                                .schoolName,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController1,
                                                            focusNode: _model
                                                                .textFieldFocusNode1,
                                                            autofocus: true,
                                                            textCapitalization:
                                                                TextCapitalization
                                                                    .none,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                'nfmu4ugb' /* Enter Score.. */,
                                                              ),
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent1,
                                                            validator: _model
                                                                .textController1Validator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '[0-9]'))
                                                            ],
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 15.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'r2qei1up' /* VS */,
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 4.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              widget
                                                                  .schoolName,
                                                              'NA',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .textController2,
                                                            focusNode: _model
                                                                .textFieldFocusNode2,
                                                            autofocus: true,
                                                            textCapitalization:
                                                                TextCapitalization
                                                                    .none,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              labelText:
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                '7k13fowg' /* Enter Score.. */,
                                                              ),
                                                              labelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent1,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            validator: _model
                                                                .textController2Validator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '[0-9]'))
                                                            ],
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 4.0)),
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 8.0)),
                                            ),
                                          ),
                                          Divider(
                                            thickness: 1.0,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'x9j32bnf' /* Select the MVP of the match he... */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    logFirebaseEvent(
                                                        'ADMIN_UPDATE_SCORE2_Container_rwf6ktsk_O');
                                                    logFirebaseEvent(
                                                        'Container_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      barrierColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return WebViewAware(
                                                          child:
                                                              GestureDetector(
                                                            onTap: () =>
                                                                FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child:
                                                                  ChooseBestPlayersWidget(
                                                                selectedUsers2:
                                                                    (pageStateUpdate) async {
                                                                  logFirebaseEvent(
                                                                      '_update_page_state');

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() => _model
                                                                .userRefSelected =
                                                            value));

                                                    safeSetState(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Container(
                                                      width: double.infinity,
                                                      constraints:
                                                          const BoxConstraints(
                                                        maxWidth: 500.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            if (!(_model.userRefSelected !=
                                                                    null &&
                                                                (_model.userRefSelected)!
                                                                    .isNotEmpty))
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        '5domak1q' /* Click Here to Select Player */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (_model.userRefSelected !=
                                                                    null &&
                                                                (_model.userRefSelected)!
                                                                    .isNotEmpty)
                                                              Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'aq3o09aj' /* Players Selected! */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Icon(
                                                                Icons
                                                                    .mode_edit_outline,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 32.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'containerOnPageLoadAnimation']!),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ].addToEnd(const SizedBox(height: 32.0)),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => FutureBuilder<List<EventsRecord>>(
                        future: queryEventsRecordOnce(
                          queryBuilder: (eventsRecord) => eventsRecord.where(
                            'sportsType',
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
                          List<EventsRecord> buttonEventsRecordList =
                              snapshot.data!;

                          return FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADMIN_UPDATE_SCORE2_UPDATE_SCORE_BTN_ON_');
                              if ((_model.textController1.text != '') &&
                                  (_model.textController2.text != '')) {
                                logFirebaseEvent('Button_alert_dialog');
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: const Text('Update Score? '),
                                                content: const Text(
                                                    'Click confirm to update the score for the game. '),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            false),
                                                    child: const Text('Cancel'),
                                                  ),
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            alertDialogContext,
                                                            true),
                                                    child: const Text('Confirm'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ) ??
                                        false;
                                if (confirmDialogResponse) {
                                  logFirebaseEvent('Button_backend_call');
                                  await buttonEventsRecordList
                                      .sortedList(
                                          keyOf: (e) => e.docRef, desc: false)
                                      .where((e) =>
                                          widget.docRef == e.reference.id)
                                      .toList()
                                      .first
                                      .reference
                                      .delete();
                                  logFirebaseEvent('Button_backend_call');

                                  var matchResultsRecordReference =
                                      MatchResultsRecord.collection.doc(
                                          valueOrDefault(
                                              currentUserDocument?.userSchool,
                                              ''));
                                  await matchResultsRecordReference
                                      .set(createMatchResultsRecordData(
                                    schoolName: valueOrDefault<String>(
                                      FFAppState().schoolName,
                                      'NA',
                                    ),
                                  ));
                                  _model.docRef2 =
                                      MatchResultsRecord.getDocumentFromData(
                                          createMatchResultsRecordData(
                                            schoolName: valueOrDefault<String>(
                                              FFAppState().schoolName,
                                              'NA',
                                            ),
                                          ),
                                          matchResultsRecordReference);
                                  logFirebaseEvent('Button_backend_call');

                                  var resultsRecordReference =
                                      ResultsRecord.createDoc(
                                    _model.docRef2!.reference,
                                    id: '${valueOrDefault(currentUserDocument?.facultyTeam, '')} - ${widget.matchDateforID}',
                                  );
                                  await resultsRecordReference.set({
                                    ...createResultsRecordData(
                                      schoolOneScore: int.tryParse(
                                          _model.textController1.text),
                                      schoolTwoScore: int.tryParse(
                                          _model.textController2.text),
                                      matchDate: widget.matchDate,
                                      opponent: widget.schoolName,
                                      sportsType: valueOrDefault(
                                          currentUserDocument?.facultyTeam, ''),
                                      matchLocation: widget.matchLocation,
                                      schoolOneName: valueOrDefault(
                                          currentUserDocument?.userSchool, ''),
                                      sportsName: () {
                                        if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Fourths Soccer')) {
                                          return 'Soccer';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Football')) {
                                          return 'Football';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Cross Country') {
                                          return 'Cross Country';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Hockey')) {
                                          return 'Hockey';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Blue) Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Red) Basketball')) {
                                          return 'Basketball';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Squash')) {
                                          return 'Squash';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Varsity Swimming') {
                                          return 'Swimming';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Baseball')) {
                                          return 'Baseball';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Golf') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Golf')) {
                                          return 'Golf';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Lacrosse')) {
                                          return 'Lacrosse';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'JV Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Thirds Tennis')) {
                                          return 'Tennis';
                                        } else {
                                          return 'NA';
                                        }
                                      }(),
                                      sportsSeason: () {
                                        if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Fourths Soccer')) {
                                          return 'Fall';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Football')) {
                                          return 'Fall';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Cross Country') {
                                          return 'Fall';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Hockey')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Blue) Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Red) Basketball')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Squash')) {
                                          return 'Winter';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Varsity Swimming') {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Baseball')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Golf') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Golf')) {
                                          return 'Spring';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Lacrosse')) {
                                          return 'Spring';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'JV Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Thirds Tennis')) {
                                          return 'Spring';
                                        } else {
                                          return 'NA';
                                        }
                                      }(),
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'bestPlayer': _model.userRefSelected,
                                      },
                                    ),
                                  });
                                  _model.docRef1 =
                                      ResultsRecord.getDocumentFromData({
                                    ...createResultsRecordData(
                                      schoolOneScore: int.tryParse(
                                          _model.textController1.text),
                                      schoolTwoScore: int.tryParse(
                                          _model.textController2.text),
                                      matchDate: widget.matchDate,
                                      opponent: widget.schoolName,
                                      sportsType: valueOrDefault(
                                          currentUserDocument?.facultyTeam, ''),
                                      matchLocation: widget.matchLocation,
                                      schoolOneName: valueOrDefault(
                                          currentUserDocument?.userSchool, ''),
                                      sportsName: () {
                                        if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Fourths Soccer')) {
                                          return 'Soccer';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Football')) {
                                          return 'Football';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Cross Country') {
                                          return 'Cross Country';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Hockey')) {
                                          return 'Hockey';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Blue) Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Red) Basketball')) {
                                          return 'Basketball';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Squash')) {
                                          return 'Squash';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Varsity Swimming') {
                                          return 'Swimming';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Baseball')) {
                                          return 'Baseball';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Golf') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Golf')) {
                                          return 'Golf';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Lacrosse')) {
                                          return 'Lacrosse';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'JV Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Thirds Tennis')) {
                                          return 'Tennis';
                                        } else {
                                          return 'NA';
                                        }
                                      }(),
                                      sportsSeason: () {
                                        if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Soccer') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Fourths Soccer')) {
                                          return 'Fall';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Football') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Football')) {
                                          return 'Fall';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Cross Country') {
                                          return 'Fall';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Hockey') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Hockey')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Blue) Basketball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds (Red) Basketball')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Squash') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Squash')) {
                                          return 'Winter';
                                        } else if (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                            'Varsity Swimming') {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Baseball') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Baseball')) {
                                          return 'Winter';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Golf') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Golf')) {
                                          return 'Spring';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Varsity B Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'JV Lacrosse') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                                'Thirds Lacrosse')) {
                                          return 'Spring';
                                        } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'JV Tennis') ||
                                            (valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Thirds Tennis')) {
                                          return 'Spring';
                                        } else {
                                          return 'NA';
                                        }
                                      }(),
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'bestPlayer': _model.userRefSelected,
                                      },
                                    ),
                                  }, resultsRecordReference);
                                  logFirebaseEvent('Button_update_page_state');
                                  _model.docRefHere =
                                      _model.docRef1!.reference.id;
                                  safeSetState(() {});
                                  logFirebaseEvent('Button_backend_call');

                                  await CommentsResultsRecord.createDoc(
                                    _model.docRef1!.parentReference,
                                    id: _model.docRefHere,
                                  ).set(createCommentsResultsRecordData(
                                    pageDocRef: _model.docRefHere,
                                    commentContent: 'Write your comments here!',
                                    commenterName: 'JB Cho - Developer',
                                    commeterImage:
                                        'https://lh3.googleusercontent.com/a/ACg8ocIMd9yVh_7lioaBdIaRaRnoTpIS1skkRzFm2NLvfqS5SCUu8Q=s96-c',
                                    commentTimestamp: getCurrentTimestamp,
                                  ));
                                  logFirebaseEvent('Button_backend_call');

                                  await _model.docRef1!.reference
                                      .update(createResultsRecordData(
                                    docID: _model.docRef1?.reference.id,
                                  ));
                                  logFirebaseEvent('Button_haptic_feedback');
                                  HapticFeedback.lightImpact();
                                  logFirebaseEvent('Button_navigate_back');
                                  context.safePop();
                                } else {
                                  logFirebaseEvent(
                                      'Button_close_dialog_drawer_etc');
                                  Navigator.pop(context);
                                }
                              } else {
                                logFirebaseEvent('Button_alert_dialog');
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title:
                                            const Text('Please fill in the scores.'),
                                        content: const Text(
                                            'To continue, you should enter the score of both schools. MVP players selection is not necessary. Thank you! '),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: const Text('Ok'),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              }

                              safeSetState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'knhcxoi0' /* Update Score */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 48.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).accent1,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
