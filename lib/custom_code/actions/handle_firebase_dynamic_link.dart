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

import 'dart:async'; // For Completer
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart'; // For Firebase Dynamic Links
import 'package:url_launcher/url_launcher.dart'; // For launching URLs

Future<String> handleFirebaseDynamicLink() async {
  Completer<String> completer = Completer<String>();

  // Check if the app was opened via Firebase Dynamic Link (cold start)
  FirebaseDynamicLinks.instance
      .getInitialLink()
      .then((PendingDynamicLinkData? dynamicLinkData) {
    if (dynamicLinkData != null) {
      final Uri deepLink = dynamicLinkData.link;
      if (deepLink.queryParameters.containsKey('code')) {
        final String authorizationCode = deepLink.queryParameters['code']!;
        print("Authorization code found in deep link: $authorizationCode");
        completer.complete(authorizationCode);
      } else {
        print("No authorization code in deep link.");
        completer
            .completeError('No authorization code found in the deep link.');
      }
    }
  });

  // Listen for dynamic links while app is running (background/foreground)
  FirebaseDynamicLinks.instance.onLink
      .listen((PendingDynamicLinkData? dynamicLinkData) {
    final Uri? deepLink = dynamicLinkData?.link;
    if (deepLink != null && deepLink.queryParameters.containsKey('code')) {
      final String authorizationCode = deepLink.queryParameters['code']!;
      print("Authorization code found in dynamic link: $authorizationCode");
      completer.complete(authorizationCode);
    } else {
      completer.completeError('No authorization code found.');
    }
  }).onError((error) {
    completer
        .completeError('Error occurred while handling dynamic link: $error');
  });

  return completer.future; // Return the authorization code once it is received
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
