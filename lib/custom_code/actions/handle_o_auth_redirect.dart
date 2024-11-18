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

import 'package:flutter/widgets.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'dart:async';

Future<String?> handleOAuthRedirect(BuildContext context) async {
  try {
    // Get the redirect URL dynamically from Firebase Dynamic Links or other deep link listener
    final String? redirectURL = await getRedirectURLFromFirebaseDynamicLinks();

    if (redirectURL == null || redirectURL.isEmpty) {
      throw Exception("Redirect URL is null or empty");
    }

    // Log the full redirect URL received for debugging purposes
    debugPrint("Full redirect URL received: $redirectURL");

    // Parse the redirect URL to get the authorization code
    Uri uri = Uri.parse(redirectURL);
    String? authorizationCode = uri.queryParameters['code'];

    if (authorizationCode != null && authorizationCode.isNotEmpty) {
      // Return the authorization code
      return authorizationCode;
    } else {
      debugPrint(
          "No authorization code found in the redirect URL: $redirectURL");
      return null;
    }
  } catch (e) {
    // Handle any errors that may occur gracefully
    debugPrint("Error parsing redirect URL: $e");
    return null;
  }
}

Future<String?> getRedirectURLFromFirebaseDynamicLinks() async {
  try {
    final PendingDynamicLinkData? data =
        await FirebaseDynamicLinks.instance.getInitialLink();
    if (data?.link != null) {
      final link = data!.link.toString();
      debugPrint("Initial deep link received: $link");
      return link;
    }

    // Listen for incoming dynamic links
    final Completer<String?> completer = Completer<String?>();
    FirebaseDynamicLinks.instance.onLink.listen((dynamicLinkData) {
      final link = dynamicLinkData.link.toString();
      debugPrint("Incoming dynamic link received: $link");
      completer.complete(link);
    }).onError((error) {
      debugPrint("Error listening for dynamic links: $error");
      completer.complete(null);
    });

    return completer.future;
  } catch (e) {
    debugPrint("Error getting redirect URL from Firebase Dynamic Links: $e");
    return null;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
