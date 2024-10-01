import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'add_game_model.dart';
export 'add_game_model.dart';

class AddGameWidget extends StatefulWidget {
  const AddGameWidget({
    super.key,
    required this.facultyTeam,
    required this.selectedDate,
    required this.selectedDateForPicker,
    required this.teamPlayers,
    required this.selectedDateParamGoogle,
  });

  final String? facultyTeam;
  final String? selectedDate;
  final DateTime? selectedDateForPicker;
  final List<DocumentReference>? teamPlayers;
  final DateTime? selectedDateParamGoogle;

  @override
  State<AddGameWidget> createState() => _AddGameWidgetState();
}

class _AddGameWidgetState extends State<AddGameWidget> {
  late AddGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddGameModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'AddGame'});
    _model.locationTextController ??= TextEditingController();
    _model.locationFocusNode ??= FocusNode();

    _model.descriptionTextController ??= TextEditingController();
    _model.descriptionFocusNode ??= FocusNode();

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
        title: 'AddGame',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: WillPopScope(
            onWillPop: () async => false,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(70.0),
                child: AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  automaticallyImplyLeading: false,
                  title: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        FFLocalizations.of(context).getText(
                          '9l15rqrk' /* Schedule a Game */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).accent1,
                              fontSize: 28.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '8pg64o3t' /* Please fill out the form below... */,
                        ),
                        style: FlutterFlowTheme.of(context)
                            .labelMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ]
                        .addToStart(const SizedBox(height: 10.0))
                        .addToEnd(const SizedBox(height: 10.0)),
                  ),
                  actions: [
                    Align(
                      alignment: const AlignmentDirectional(1.0, -1.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: FlutterFlowTheme.of(context).alternate,
                          borderRadius: 12.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          icon: Icon(
                            Icons.close_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'ADD_GAME_PAGE_close_rounded_ICN_ON_TAP');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                      ),
                    ),
                  ],
                  centerTitle: false,
                  elevation: 0.0,
                ),
              ),
              body: SafeArea(
                top: true,
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxWidth: 770.0,
                                  ),
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .taskValueController ??=
                                              FormFieldController<String>(null),
                                          options: [
                                            FFLocalizations.of(context).getText(
                                              'wme2xxg0' /* Choate Rosemary Hall */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'kt9ov7kb' /* The Taft School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '5a5escba' /* The Ethel Walker School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'bwlzixa7' /* The Hotchkiss School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'h6za7nx7' /* Kent School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'f92t35pu' /* Kingswood Oxford School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'wtjt67b2' /* Loomis Chaffee School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              's125iq9d' /* Miss Porter's School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              'f2y80a0h' /* Westminster School */,
                                            ),
                                            FFLocalizations.of(context).getText(
                                              '1ivfbmoh' /* Trinity-Pawling School */,
                                            )
                                          ],
                                          onChanged: (val) => safeSetState(
                                              () => _model.taskValue = val),
                                          width: double.infinity,
                                          height: 56.0,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          searchTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                letterSpacing: 0.0,
                                              ),
                                          hintText: FFLocalizations.of(context)
                                              .getText(
                                            'x7cni26n' /* Select Opponent.. */,
                                          ),
                                          searchHintText:
                                              FFLocalizations.of(context)
                                                  .getText(
                                            'de1am76i' /* Search a School.. */,
                                          ),
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent2,
                                          borderWidth: 2.0,
                                          borderRadius: 8.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: true,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.locationTextController,
                                          focusNode: _model.locationFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.locationTextController',
                                            const Duration(milliseconds: 2000),
                                            () => safeSetState(() {}),
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'gccqz285' /* Location */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      letterSpacing: 0.0,
                                                    ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            suffixIcon: _model
                                                    .locationTextController!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .locationTextController
                                                          ?.clear();
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      size: 15.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLength: 50,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          validator: _model
                                              .locationTextControllerValidator
                                              .asValidator(context),
                                        ),
                                        TextFormField(
                                          controller:
                                              _model.descriptionTextController,
                                          focusNode:
                                              _model.descriptionFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.descriptionTextController',
                                            const Duration(milliseconds: 2000),
                                            () => safeSetState(() {}),
                                          ),
                                          autofocus: true,
                                          textCapitalization:
                                              TextCapitalization.words,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'gunn74ag' /* Write a Description.. */,
                                            ),
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      letterSpacing: 0.0,
                                                    ),
                                            alignLabelWithHint: true,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      letterSpacing: 0.0,
                                                    ),
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .error,
                                                width: 2.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            filled: true,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            contentPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 16.0, 16.0, 16.0),
                                            suffixIcon: _model
                                                    .descriptionTextController!
                                                    .text
                                                    .isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model
                                                          .descriptionTextController
                                                          ?.clear();
                                                      safeSetState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      size: 15.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                letterSpacing: 0.0,
                                              ),
                                          maxLines: 9,
                                          maxLength: 300,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          validator: _model
                                              .descriptionTextControllerValidator
                                              .asValidator(context),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'r0p93p3m' /* Select a Time */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'ADD_GAME_PAGE_Container_av1ih857_ON_TAP');
                                            logFirebaseEvent(
                                                'Container_date_time_picker');
                                            await showModalBottomSheet<bool>(
                                                context: context,
                                                builder: (context) {
                                                  final datePickedCupertinoTheme =
                                                      CupertinoTheme.of(
                                                          context);
                                                  return ScrollConfiguration(
                                                    behavior:
                                                        const MaterialScrollBehavior()
                                                            .copyWith(
                                                      dragDevices: {
                                                        PointerDeviceKind.mouse,
                                                        PointerDeviceKind.touch,
                                                        PointerDeviceKind
                                                            .stylus,
                                                        PointerDeviceKind
                                                            .unknown
                                                      },
                                                    ),
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height /
                                                              3,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      child: CupertinoTheme(
                                                        data:
                                                            datePickedCupertinoTheme
                                                                .copyWith(
                                                          textTheme:
                                                              datePickedCupertinoTheme
                                                                  .textTheme
                                                                  .copyWith(
                                                            dateTimePickerTextStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
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
                                                        child:
                                                            CupertinoDatePicker(
                                                          mode:
                                                              CupertinoDatePickerMode
                                                                  .time,
                                                          minimumDate:
                                                              DateTime(1900),
                                                          initialDateTime: (widget
                                                                  .selectedDateForPicker ??
                                                              DateTime.now()),
                                                          maximumDate:
                                                              DateTime(2050),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          use24hFormat: false,
                                                          onDateTimeChanged:
                                                              (newDateTime) =>
                                                                  safeSetState(
                                                                      () {
                                                            _model.datePicked =
                                                                newDateTime;
                                                          }),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                });
                                            logFirebaseEvent(
                                                'Container_update_page_state');
                                            _model.selectedDateForGoogle =
                                                _model.datePicked;
                                            safeSetState(() {});
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent2,
                                                width: 2.0,
                                              ),
                                            ),
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    dateTimeFormat(
                                                      "M/d h:mm a",
                                                      _model.datePicked,
                                                      locale:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .languageCode,
                                                    ),
                                                    'Set the Game Time by Clikcing Here.',
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
                                                                .accent1,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]
                                          .divide(const SizedBox(height: 12.0))
                                          .addToEnd(const SizedBox(height: 32.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        constraints: const BoxConstraints(
                          maxWidth: 770.0,
                        ),
                        decoration: const BoxDecoration(),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 12.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADD_GAME_PAGE_SCHEDULE_A_GAME_BTN_ON_TAP');
                              if ((_model.taskValue != null &&
                                      _model.taskValue != '') &&
                                  (_model.locationTextController.text !=
                                          '') &&
                                  (_model.descriptionTextController.text !=
                                          '') &&
                                  (_model.datePicked != null)) {
                                logFirebaseEvent('Button_alert_dialog');
                                var confirmDialogResponse =
                                    await showDialog<bool>(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return WebViewAware(
                                              child: AlertDialog(
                                                title: const Text(
                                                    'Do you want to confirm schedule?'),
                                                content: const Text(
                                                    'Please preess \'Confirm\' to proceed and end scheduling.'),
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
                                  logFirebaseEvent('Button_haptic_feedback');
                                  HapticFeedback.lightImpact();
                                  logFirebaseEvent('Button_backend_call');

                                  var dynamicSchedulesRecordReference =
                                      DynamicSchedulesRecord.collection
                                          .doc(FFAppState().schoolName);
                                  await dynamicSchedulesRecordReference
                                      .set(createDynamicSchedulesRecordData(
                                    schoolName: FFAppState().schoolName,
                                  ));
                                  _model.docReference1 = DynamicSchedulesRecord
                                      .getDocumentFromData(
                                          createDynamicSchedulesRecordData(
                                            schoolName: FFAppState().schoolName,
                                          ),
                                          dynamicSchedulesRecordReference);
                                  logFirebaseEvent('Button_backend_call');

                                  var eventsRecordReference =
                                      EventsRecord.createDoc(
                                    _model.docReference1!.reference,
                                    id: '${widget.facultyTeam} - ${_model.datePicked?.toString()}',
                                  );
                                  await eventsRecordReference
                                      .set(createEventsRecordData(
                                    opponent: valueOrDefault<String>(
                                      _model.taskValue,
                                      'NA',
                                    ),
                                    location:
                                        _model.locationTextController.text,
                                    description:
                                        _model.descriptionTextController.text,
                                    time: _model.datePicked,
                                    sportsType: widget.facultyTeam,
                                    docRef:
                                        '${widget.facultyTeam} - ${_model.datePicked?.toString()}',
                                    date: widget.selectedDate,
                                    schoolName:
                                        _model.docReference1?.schoolName,
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
                                      } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Baseball') ||
                                          (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                              'JV Baseball') ||
                                          (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                              'Thirds Baseball')) {
                                        return 'Baseball';
                                      } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Golf') ||
                                          (valueOrDefault(currentUserDocument?.facultyTeam, '') ==
                                              'JV Golf')) {
                                        return 'Golf';
                                      } else if ((valueOrDefault(currentUserDocument?.facultyTeam, '') == 'Varsity Lacrosse') ||
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
                                  ));
                                  _model.docReference2 =
                                      EventsRecord.getDocumentFromData(
                                          createEventsRecordData(
                                            opponent: valueOrDefault<String>(
                                              _model.taskValue,
                                              'NA',
                                            ),
                                            location: _model
                                                .locationTextController.text,
                                            description: _model
                                                .descriptionTextController.text,
                                            time: _model.datePicked,
                                            sportsType: widget.facultyTeam,
                                            docRef:
                                                '${widget.facultyTeam} - ${_model.datePicked?.toString()}',
                                            date: widget.selectedDate,
                                            schoolName: _model
                                                .docReference1?.schoolName,
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
                                          ),
                                          eventsRecordReference);
                                  logFirebaseEvent('Button_backend_call');

                                  await CommentsSchedulesRecord.createDoc(
                                    _model.docReference2!.parentReference,
                                    id: _model.docReference2!.docRef,
                                  ).set(createCommentsSchedulesRecordData(
                                    commentContent: 'Write Your Comments Here!',
                                    pageDocRef: _model.docReference2?.docRef,
                                    commenterName: 'JB Cho - Developer',
                                    commeterImage:
                                        'https://lh3.googleusercontent.com/a/ACg8ocIMd9yVh_7lioaBdIaRaRnoTpIS1skkRzFm2NLvfqS5SCUu8Q=s96-c',
                                    commentTimestamp: getCurrentTimestamp,
                                  ));
                                  logFirebaseEvent('Button_navigate_to');

                                  context.goNamed(
                                    'AdminAskGoogleCalendar',
                                    queryParameters: {
                                      'title': serializeParam(
                                        _model.taskValue,
                                        ParamType.String,
                                      ),
                                      'description': serializeParam(
                                        _model.descriptionTextController.text,
                                        ParamType.String,
                                      ),
                                      'startTime': serializeParam(
                                        _model.selectedDateForGoogle,
                                        ParamType.DateTime,
                                      ),
                                      'endTime': serializeParam(
                                        _model.datePicked,
                                        ParamType.DateTime,
                                      ),
                                    }.withoutNulls,
                                  );
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
                                        title: const Text(
                                            'Please fill in all the fields!'),
                                        content: const Text(
                                            'In order to continue, all provided fields should contain at least one character. Thank you!'),
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
                              'ftyet1wv' /* Schedule a Game */,
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
