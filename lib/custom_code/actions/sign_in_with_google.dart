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

import 'package:google_sign_in/google_sign_in.dart';

Future<String?> signInWithGoogle() async {
  try {
    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '766160023091-4nlv7vvv83qq2mmtvquf0r75ie28g4dd.apps.googleusercontent.com',
      scopes: <String>[
        'https://www.googleapis.com/auth/calendar',
        'https://www.googleapis.com/auth/calendar.events',
      ],
    );

    // Check if user is already signed in
    GoogleSignInAccount? currentUser = googleSignIn.currentUser;

    if (currentUser != null) {
      // If already signed in, return the existing access token
      final GoogleSignInAuthentication googleSignInAuthentication =
          await currentUser.authentication;
      return googleSignInAuthentication.accessToken;
    } else {
      // If not signed in, prompt the user to sign in
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        return googleSignInAuthentication.accessToken;
      } else {
        print('User canceled Google sign-in');
        return null;
      }
    }
  } catch (error) {
    print('Error signing in with Google: $error');
    return null;
  }
}
