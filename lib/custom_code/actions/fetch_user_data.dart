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

Future<void> fetchUserData(String accessToken) async {
  final String schoolRoute =
      'api-sandbox'; // Replace with your actual school route
  final String apiUrl = 'https://api.veracross.com/$schoolRoute/v3/persons';

  final response = await http.get(
    Uri.parse(apiUrl),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    // Process the user data as needed
  } else {
    // Handle the error
    print('Error fetching user data: ${response.statusCode}');
  }
}
