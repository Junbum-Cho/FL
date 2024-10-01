import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'admin_update_banner_model.dart';
export 'admin_update_banner_model.dart';

class AdminUpdateBannerWidget extends StatefulWidget {
  const AdminUpdateBannerWidget({super.key});

  @override
  State<AdminUpdateBannerWidget> createState() =>
      _AdminUpdateBannerWidgetState();
}

class _AdminUpdateBannerWidgetState extends State<AdminUpdateBannerWidget>
    with TickerProviderStateMixin {
  late AdminUpdateBannerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminUpdateBannerModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminUpdateBanner'});
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
        title: 'AdminUpdateBanner',
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
                buttonSize: 65.0,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: FlutterFlowTheme.of(context).accent1,
                  size: 35.0,
                ),
                onPressed: () async {
                  logFirebaseEvent('ADMIN_UPDATE_BANNER_arrow_back_ios_round');
                  logFirebaseEvent('IconButton_navigate_back');
                  context.pop();
                },
              ),
              actions: const [],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'josm1ieo' /* Update Real-time Banner */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context).accent1,
                                    fontSize: 28.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController1,
                        focusNode: _model.textFieldFocusNode1,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            '3nimuq6x' /* Write the title... */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent1,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).accent1,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                        maxLength: 60,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        validator: _model.textController1Validator
                            .asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 18.0, 24.0, 0.0),
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: FFLocalizations.of(context).getText(
                            'ot22f8nc' /* Write the description here... */,
                          ),
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context).accent1,
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).accent1,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                            ),
                        maxLines: 4,
                        maxLength: 120,
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        validator: _model.textController2Validator
                            .asValidator(context),
                      ),
                    ),
                    if (_model.uploadedFileUrl != '')
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: CachedNetworkImage(
                            fadeInDuration: const Duration(milliseconds: 500),
                            fadeOutDuration: const Duration(milliseconds: 500),
                            imageUrl: _model.uploadedFileUrl,
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 18.0, 24.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'ADMIN_UPDATE_BANNER_Container_a0mtr7qw_O');
                          logFirebaseEvent(
                              'Container_upload_media_to_firebase');
                          final selectedMedia = await selectMedia(
                            imageQuality: 100,
                            mediaSource: MediaSource.photoGallery,
                            multiImage: false,
                          );
                          if (selectedMedia != null &&
                              selectedMedia.every((m) =>
                                  validateFileFormat(m.storagePath, context))) {
                            safeSetState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            var downloadUrls = <String>[];
                            try {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              selectedUploadedFiles = selectedMedia
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                        height: m.dimensions?.height,
                                        width: m.dimensions?.width,
                                        blurHash: m.blurHash,
                                      ))
                                  .toList();

                              downloadUrls = (await Future.wait(
                                selectedMedia.map(
                                  (m) async =>
                                      await uploadData(m.storagePath, m.bytes),
                                ),
                              ))
                                  .where((u) => u != null)
                                  .map((u) => u!)
                                  .toList();
                            } finally {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                    selectedMedia.length &&
                                downloadUrls.length == selectedMedia.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                                _model.uploadedFileUrl = downloadUrls.first;
                              });
                              showUploadMessage(context, 'Success!');
                            } else {
                              safeSetState(() {});
                              showUploadMessage(
                                  context, 'Failed to upload data');
                              return;
                            }
                          }
                        },
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 500.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.add_a_photo_rounded,
                                  color: FlutterFlowTheme.of(context).accent1,
                                  size: 32.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'pgrnwphk' /* Upload Screenshot */,
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
                              ],
                            ),
                          ),
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ADMIN_UPDATE_BANNER_UPDATE_BANNER_BTN_ON');
                          if ((_model.textController1.text != '') &&
                              (_model.textController1.text != '') &&
                              (_model.uploadedFileUrl != '')) {
                            logFirebaseEvent('Button_alert_dialog');
                            var confirmDialogResponse = await showDialog<bool>(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return WebViewAware(
                                      child: AlertDialog(
                                        title: const Text('Update Banner?'),
                                        content:
                                            const Text('Do you want to proceed? '),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext, false),
                                            child: const Text('Cancel'),
                                          ),
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext, true),
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

                              var specialArticlesRecordReference =
                                  SpecialArticlesRecord.collection
                                      .doc(FFAppState().schoolName);
                              await specialArticlesRecordReference
                                  .set(createSpecialArticlesRecordData(
                                schoolName: FFAppState().schoolName,
                              ));
                              _model.docReference1 =
                                  SpecialArticlesRecord.getDocumentFromData(
                                      createSpecialArticlesRecordData(
                                        schoolName: FFAppState().schoolName,
                                      ),
                                      specialArticlesRecordReference);
                              logFirebaseEvent('Button_backend_call');

                              var specialArticleContentsRecordReference =
                                  SpecialArticleContentsRecord.createDoc(
                                _model.docReference1!.reference,
                                id: 'Article',
                              );
                              await specialArticleContentsRecordReference
                                  .set(createSpecialArticleContentsRecordData(
                                title: _model.textController1.text,
                                image: _model.uploadedFileUrl,
                                description: _model.textController2.text,
                              ));
                              _model.docReference2 = SpecialArticleContentsRecord
                                  .getDocumentFromData(
                                      createSpecialArticleContentsRecordData(
                                        title: _model.textController1.text,
                                        image: _model.uploadedFileUrl,
                                        description:
                                            _model.textController2.text,
                                      ),
                                      specialArticleContentsRecordReference);
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
                                    title: const Text(
                                        'Please fill in the entire form. '),
                                    content: const Text(
                                        'Empty values will result in error. Please fill in all the details. Thank you! '),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
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
                          'ktpt4oqp' /* Update Banner */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
