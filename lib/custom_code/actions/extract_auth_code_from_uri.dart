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

// This custom action extracts the authorization code from the URL
// and returns it for storing in a page state variable.

Future<String> extractAuthCodeFromUri(String deepLinkUrl) async {
  // Debug log to verify the deep link received
  print("Debug: Deep link URL received in custom action: $deepLinkUrl");

  // Parse the URL
  final Uri deepLink = Uri.parse(deepLinkUrl);

  // Extract the "code" parameter from the query parameters
  final String? authCode = deepLink.queryParameters['code'];

  // Debug log for the extracted code
  print("Debug: Authorization code extracted: $authCode");

  // Return the authorization code or an empty string if it's missing
  return authCode ?? '';
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
