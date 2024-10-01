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

import 'package:flutter/foundation.dart';

Future<String> generatePageUrl(String routeName) async {
  // Generate a consistent and secure URL based on the app's bundle identifier and page route.
  // Ensure the URL remains constant across app updates.
  const String bundleIdentifier = 'com.mycompany.foundersleague';
  final String pageUrl = 'https://$bundleIdentifier/$routeName';

  return pageUrl;
}
