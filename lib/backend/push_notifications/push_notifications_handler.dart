import 'dart:async';

import 'serialization_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).accent1,
          child: Image.asset(
            'assets/images/FL_App_Logo-removebg-preview.png',
            fit: BoxFit.contain,
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'AskUserAccount': ParameterData.none(),
  'SignUp': ParameterData.none(),
  'Latest': (data) async => ParameterData(
        allParams: {
          'code': getParameter<String>(data, 'code'),
        },
      ),
  'FL': ParameterData.none(),
  'WelcomePage': ParameterData.none(),
  'Table': ParameterData.none(),
  'Results': ParameterData.none(),
  'schoolList': ParameterData.none(),
  'EachSchoolProfile': (data) async => ParameterData(
        allParams: {
          'schoolName': getParameter<String>(data, 'schoolName'),
          'schoolColor': getParameter<Color>(data, 'schoolColor'),
          'schoolSportsImage': getParameter<String>(data, 'schoolSportsImage'),
          'schoolLogoImage': getParameter<String>(data, 'schoolLogoImage'),
          'schoolExplanation': getParameter<String>(data, 'schoolExplanation'),
        },
      ),
  'Profiles': ParameterData.none(),
  'NotificationSettings': ParameterData.none(),
  'UploadArticle': ParameterData.none(),
  'ArticleDetails': (data) async => ParameterData(
        allParams: {
          'title': getParameter<String>(data, 'title'),
          'author': getParameter<String>(data, 'author'),
          'image1': getParameter<String>(data, 'image1'),
          'timeStamp': getParameter<DateTime>(data, 'timeStamp'),
          'subtitle1': getParameter<String>(data, 'subtitle1'),
          'subtitle2': getParameter<String>(data, 'subtitle2'),
          'subtitle3': getParameter<String>(data, 'subtitle3'),
          'content1': getParameter<String>(data, 'content1'),
          'content2': getParameter<String>(data, 'content2'),
          'content3': getParameter<String>(data, 'content3'),
          'image2': getParameter<String>(data, 'image2'),
          'image3': getParameter<String>(data, 'image3'),
          'auhtorProfileImage':
              getParameter<String>(data, 'auhtorProfileImage'),
        },
      ),
  'BugReport': ParameterData.none(),
  'TeamOverview': (data) async => ParameterData(
        allParams: {
          'sportsName': getParameter<String>(data, 'sportsName'),
          'sportsLocation': getParameter<String>(data, 'sportsLocation'),
          'sportsVideo': getParameter<String>(data, 'sportsVideo'),
          'sportsImage': getParameter<String>(data, 'sportsImage'),
          'shortSportsName': getParameter<String>(data, 'shortSportsName'),
          'sportsImage2': getParameter<String>(data, 'sportsImage2'),
          'sportsImage3': getParameter<String>(data, 'sportsImage3'),
          'sportsImage4': getParameter<String>(data, 'sportsImage4'),
          'sportsImage5': getParameter<String>(data, 'sportsImage5'),
          'sportsID': getParameter<int>(data, 'sportsID'),
        },
      ),
  'MatchPreview': (data) async => ParameterData(
        allParams: {
          'schoolOne': getParameter<String>(data, 'schoolOne'),
          'schoolTwo': getParameter<String>(data, 'schoolTwo'),
          'date': getParameter<String>(data, 'date'),
          'time': getParameter<DateTime>(data, 'time'),
          'location': getParameter<String>(data, 'location'),
          'schoolColor1': getParameter<Color>(data, 'schoolColor1'),
          'schoolColor2': getParameter<Color>(data, 'schoolColor2'),
          'sportsType': getParameter<String>(data, 'sportsType'),
          'commentNumber': getParameter<int>(data, 'commentNumber'),
          'docRef': getParameter<String>(data, 'docRef'),
          'dateForComment': getParameter<String>(data, 'dateForComment'),
          'teamId': getParameter<String>(data, 'teamId'),
        },
      ),
  'AthleticTeams': ParameterData.none(),
  'MatchOverview': (data) async => ParameterData(
        allParams: {
          'sportsType': getParameter<String>(data, 'sportsType'),
          'schoolOneName': getParameter<String>(data, 'schoolOneName'),
          'schoolNameTwo': getParameter<String>(data, 'schoolNameTwo'),
          'schoolOneScore': getParameter<int>(data, 'schoolOneScore'),
          'schoolTwoScore': getParameter<int>(data, 'schoolTwoScore'),
          'matchDate': getParameter<String>(data, 'matchDate'),
          'matchLocation': getParameter<String>(data, 'matchLocation'),
          'schoolOneImage': getParameter<String>(data, 'schoolOneImage'),
          'schoolTwoImage': getParameter<String>(data, 'schoolTwoImage'),
          'schoolOneColor': getParameter<Color>(data, 'schoolOneColor'),
          'schooltwoColor': getParameter<Color>(data, 'schooltwoColor'),
          'docRef': getParameter<String>(data, 'docRef'),
          'commentNumber': getParameter<int>(data, 'commentNumber'),
        },
      ),
  'Fixtures': ParameterData.none(),
  'Statistics': (data) async => ParameterData(
        allParams: {
          'mostWinsTeam': getParameter<String>(data, 'mostWinsTeam'),
          'thisWeekAthlete': getParameter<String>(data, 'thisWeekAthlete'),
        },
      ),
  'AdminActivity': ParameterData.none(),
  'UserOnboarding': ParameterData.none(),
  'AdminMatchSchedule': (data) async => ParameterData(
        allParams: {
          'facultyTeam': getParameter<String>(data, 'facultyTeam'),
        },
      ),
  'AddGame': (data) async => ParameterData(
        allParams: {
          'facultyTeam': getParameter<String>(data, 'facultyTeam'),
          'selectedDate': getParameter<String>(data, 'selectedDate'),
          'selectedDateForPicker':
              getParameter<DateTime>(data, 'selectedDateForPicker'),
          'selectedDateParamGoogle':
              getParameter<DateTime>(data, 'selectedDateParamGoogle'),
        },
      ),
  'AdminUpdateScore': ParameterData.none(),
  'AdminUpdateScore2': (data) async => ParameterData(
        allParams: {
          'schoolName': getParameter<String>(data, 'schoolName'),
          'schoolImage': getParameter<String>(data, 'schoolImage'),
          'docRef': getParameter<String>(data, 'docRef'),
          'matchDate': getParameter<String>(data, 'matchDate'),
          'matchLocation': getParameter<String>(data, 'matchLocation'),
          'matchDateforID': getParameter<String>(data, 'matchDateforID'),
        },
      ),
  'AdmineTeamPlayerList': ParameterData.none(),
  'AdminAddPlayers': ParameterData.none(),
  'chat_ai_Screen': ParameterData.none(),
  'notifications_List': ParameterData.none(),
  'notification_Create': ParameterData.none(),
  'ArticleLists': ParameterData.none(),
  'AdminStatisticsUpdate': ParameterData.none(),
  'VideoPlayer': ParameterData.none(),
  'VideoPlaying': ParameterData.none(),
  'AdminVideoUpload': ParameterData.none(),
  'EditProfile': ParameterData.none(),
  'AdminUpdateBanner': ParameterData.none(),
  'AdminDashBoard': ParameterData.none(),
  'LivestreamVideos': ParameterData.none(),
  'AdminAskGoogleCalendar': (data) async => ParameterData(
        allParams: {
          'title': getParameter<String>(data, 'title'),
          'description': getParameter<String>(data, 'description'),
          'startTime': getParameter<DateTime>(data, 'startTime'),
          'endTime': getParameter<DateTime>(data, 'endTime'),
        },
      ),
  'LivestreamLists': ParameterData.none(),
  'LiveStreamPage': (data) async => ParameterData(
        allParams: {
          'streamName': getParameter<String>(data, 'streamName'),
          'streamDescription': getParameter<String>(data, 'streamDescription'),
        },
      ),
  'LiveStreamViewer': (data) async => ParameterData(
        allParams: {
          'url': getParameter<String>(data, 'url'),
        },
      ),
  'LoginSuccessful': ParameterData.none(),
  'RosterDetail': (data) async => ParameterData(
        allParams: {
          'playerName': getParameter<String>(data, 'playerName'),
          'playerPosition': getParameter<String>(data, 'playerPosition'),
          'playerGrade': getParameter<int>(data, 'playerGrade'),
          'playerJersey': getParameter<int>(data, 'playerJersey'),
          'playerNationality': getParameter<String>(data, 'playerNationality'),
        },
      ),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
