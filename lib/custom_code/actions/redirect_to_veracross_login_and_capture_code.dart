// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> redirectToVeracrossLoginAndCaptureCode() async {
  final String redirectUriEncoded =
      Uri.encodeComponent('https://foundersleagueportal.page.link/ib87');
  final String veracrossLoginUrl =
      'https://accounts.veracross.com/api-sandbox/oauth/authorize?client_id=2c62ed1578d44185b7fe258ceb6fbbd8&redirect_uri=$redirectUriEncoded&scope=sso&response_type=code';

  print("Launching Veracross Login URL: $veracrossLoginUrl");

  // Try launching the Veracross OAuth login URL
  if (await canLaunch(veracrossLoginUrl)) {
    await launch(veracrossLoginUrl,
        forceWebView: false, enableJavaScript: true);
  } else {
    throw 'Could not launch $veracrossLoginUrl';
  }

  // Completer to handle the authorization code return
  Completer<String> completer = Completer<String>();

  // Set a delay before listening to ensure login has time to complete
  Future.delayed(Duration(seconds: 5), () {
    listenForDynamicLink(completer);
  });

  // Timeout if no code is received within 60 seconds
  Future.delayed(Duration(seconds: 60), () {
    if (!completer.isCompleted) {
      print('Authorization code not received in time.');
      completer.completeError('Authorization code not received in time.');
    }
  });

  return completer.future;
}

// Separate method to listen for dynamic links
void listenForDynamicLink(Completer<String> completer) {
  print("Listening for Firebase Dynamic Links...");

  // Check if app was launched using a Firebase Dynamic Link (cold start)
  FirebaseDynamicLinks.instance
      .getInitialLink()
      .then((PendingDynamicLinkData? dynamicLinkData) {
    if (dynamicLinkData != null) {
      final Uri deepLink = dynamicLinkData.link;
      print("Deep link received on app start: $deepLink");

      if (deepLink.queryParameters.containsKey('code')) {
        final String authCode = deepLink.queryParameters['code']!;
        print("Authorization code found on app start: $authCode");
        completer.complete(authCode);
      }
    }
  });

  // Listen for dynamic links when the app is running (background or active state)
  FirebaseDynamicLinks.instance.onLink
      .listen((PendingDynamicLinkData? dynamicLinkData) {
    final Uri? deepLink = dynamicLinkData?.link;
    print("Dynamic link received: $deepLink");

    if (deepLink != null && deepLink.queryParameters.containsKey('code')) {
      final String authCode = deepLink.queryParameters['code']!;
      print("Authorization code found: $authCode");
      completer.complete(authCode);
    } else {
      print("Authorization code not found in dynamic link");
      completer.completeError('Authorization code not found');
    }
  }).onError((error) {
    print("Error occurred while listening for dynamic link: $error");
    completer.completeError('Error occurred: $error');
  });
}
