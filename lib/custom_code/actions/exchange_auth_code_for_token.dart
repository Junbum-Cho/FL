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

Future<String> exchangeAuthCodeForToken(String authorizationCode) async {
  final response = await http.post(
    Uri.parse('https://accounts.veracross.com/api-sandbox/oauth/token'),
    headers: {
      'Content-Type': 'application/x-www-form-urlencoded',
    },
    body: {
      'grant_type': 'authorization_code',
      'client_id': '2c62ed1578d44185b7fe258ceb6fbbd8',
      'client_secret':
          '7b203b99ca18c72d32ab5b3fa24993c6443da42f39171cde5cfe39f4f17f9e6e',
      'code': authorizationCode,
      'redirect_uri': 'https://foundersleagueportal.page.link/ib87',
    },
  );

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    print("Access token received: ${jsonResponse['access_token']}");
    return jsonResponse['access_token']; // Return the access token
  } else {
    print(
        "Error exchanging authorization code for access token: ${response.body}");
    throw 'Error: Failed to exchange authorization code: ${response.body}';
  }
}
