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

Future<String> fetchUserInfo(String accessToken) async {
  final response = await http.get(
    Uri.parse('https://api.veracross.com/api-sandbox/v3/userinfo'),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (response.statusCode == 200) {
    final userInfo = json.decode(response.body);
    return userInfo['preferred_username'] ?? 'No username found';
  } else {
    throw 'Error: Failed to fetch user info: ${response.body}';
  }
}
