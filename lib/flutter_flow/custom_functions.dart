import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  // If chatHistory isn't a list, make it a list and then add newChat
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToCombinedJSON(
  String prompt,
  String description,
) {
  // Create JSON objects for the system message and user message
  var systemMessage = {"role": "system", "content": description};

  var userMessage = {"role": "user", "content": prompt};

  // Combine both messages into a single JSON array
  var combinedMessages = [systemMessage, userMessage];

  // Return the combined JSON array
  return combinedMessages;
}

dynamic convertToJSON(String prompt) {
  // take the prompt and return a JSON with form [{"role": "user", "content": prompt}]
  return json.decode('{"role": "user", "content": "$prompt"}');
}

String getPlaybackIDFromURL(String url) {
  String strl = url.replaceAll(".m3u8", "");
  return strl.split("/").last;
}
