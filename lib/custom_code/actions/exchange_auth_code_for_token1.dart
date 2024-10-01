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

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> exchangeAuthCodeForToken1(String authorizationCode) async {
  final String clientId = '2c62ed1578d44185b7fe258ceb6fbbd8';
  final String clientSecret =
      '7b203b99ca18c72d32ab5b3fa24993c6443da42f39171cde5cfe39f4f17f9e6e';
  final String redirectUri = 'https://foundersleagueportal.page.link/ib87';

  final response = await http.post(
    Uri.parse('https://accounts.veracross.com/api-sandbox/oauth/token'),
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: {
      'grant_type': 'authorization_code',
      'client_id': clientId,
      'client_secret': clientSecret,
      'code': authorizationCode,
      'redirect_uri': redirectUri,
    },
  );

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    return jsonResponse['access_token']; // Return the access token
  } else {
    throw 'Error exchanging authorization code for access token: ${response.body}';
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
