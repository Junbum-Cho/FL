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

// Function to redirect to Veracross Login
Future<void> redirectToVeracrossLogin() async {
  final String clientId = '2c62ed1578d44185b7fe258ceb6fbbd8';
  final String redirectUri =
      Uri.encodeComponent('https://foundersleagueportal.page.link/ib87');
  final String veracrossLoginUrl =
      'https://accounts.veracross.com/api-sandbox/oauth/authorize?client_id=$clientId&redirect_uri=$redirectUri&response_type=code&scope=sso';

  // Launch the Veracross login page
  if (await canLaunch(veracrossLoginUrl)) {
    await launch(veracrossLoginUrl, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $veracrossLoginUrl';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
