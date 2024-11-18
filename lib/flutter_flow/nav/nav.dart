import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';
export '/backend/firebase_dynamic_links/firebase_dynamic_links.dart'
    show generateCurrentPageLink;

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) => _RouteErrorBuilder(
        state: state,
        child: appStateNotifier.loggedIn ? const NavBarPage() : const WelcomePageWidget(),
      ),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const WelcomePageWidget(),
        ),
        FFRoute(
          name: 'AskUserAccount',
          path: '/askUserAccount',
          builder: (context, params) => const AskUserAccountWidget(),
        ),
        FFRoute(
          name: 'SignUp',
          path: '/signUp',
          builder: (context, params) => const SignUpWidget(),
        ),
        FFRoute(
          name: 'Latest',
          path: '/latest',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Latest')
              : LatestWidget(
                  code: params.getParam(
                    'code',
                    ParamType.String,
                  ),
                ),
        ),
        FFRoute(
          name: 'FL',
          path: '/fl',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'FL') : const FlWidget(),
        ),
        FFRoute(
          name: 'WelcomePage',
          path: '/welcomePage',
          builder: (context, params) => const WelcomePageWidget(),
        ),
        FFRoute(
          name: 'Table',
          path: '/table',
          requireAuth: true,
          builder: (context, params) => const TableWidget(),
        ),
        FFRoute(
          name: 'Results',
          path: '/results',
          builder: (context, params) => const ResultsWidget(),
        ),
        FFRoute(
          name: 'schoolList',
          path: '/schoolList',
          builder: (context, params) => const SchoolListWidget(),
        ),
        FFRoute(
          name: 'EachSchoolProfile',
          path: '/eachSchoolProfile',
          builder: (context, params) => EachSchoolProfileWidget(
            schoolName: params.getParam(
              'schoolName',
              ParamType.String,
            ),
            schoolColor: params.getParam(
              'schoolColor',
              ParamType.Color,
            ),
            schoolSportsImage: params.getParam(
              'schoolSportsImage',
              ParamType.String,
            ),
            schoolLogoImage: params.getParam(
              'schoolLogoImage',
              ParamType.String,
            ),
            schoolExplanation: params.getParam(
              'schoolExplanation',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'Profiles',
          path: '/profiles',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profiles')
              : const ProfilesWidget(),
        ),
        FFRoute(
          name: 'NotificationSettings',
          path: '/notificationSettings',
          builder: (context, params) => const NotificationSettingsWidget(),
        ),
        FFRoute(
          name: 'UploadArticle',
          path: '/uploadArticle',
          builder: (context, params) => const UploadArticleWidget(),
        ),
        FFRoute(
          name: 'ArticleDetails',
          path: '/articleDetails',
          builder: (context, params) => ArticleDetailsWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            author: params.getParam(
              'author',
              ParamType.String,
            ),
            image1: params.getParam(
              'image1',
              ParamType.String,
            ),
            timeStamp: params.getParam(
              'timeStamp',
              ParamType.DateTime,
            ),
            subtitle1: params.getParam(
              'subtitle1',
              ParamType.String,
            ),
            subtitle2: params.getParam(
              'subtitle2',
              ParamType.String,
            ),
            subtitle3: params.getParam(
              'subtitle3',
              ParamType.String,
            ),
            content1: params.getParam(
              'content1',
              ParamType.String,
            ),
            content2: params.getParam(
              'content2',
              ParamType.String,
            ),
            content3: params.getParam(
              'content3',
              ParamType.String,
            ),
            image2: params.getParam(
              'image2',
              ParamType.String,
            ),
            image3: params.getParam(
              'image3',
              ParamType.String,
            ),
            auhtorProfileImage: params.getParam(
              'auhtorProfileImage',
              ParamType.String,
            ),
            cathegories: params.getParam<String>(
              'cathegories',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'BugReport',
          path: '/bugReport',
          builder: (context, params) => const BugReportWidget(),
        ),
        FFRoute(
          name: 'TeamOverview',
          path: '/teamOverview',
          builder: (context, params) => TeamOverviewWidget(
            sportsName: params.getParam(
              'sportsName',
              ParamType.String,
            ),
            sportsLocation: params.getParam(
              'sportsLocation',
              ParamType.String,
            ),
            sportsVideo: params.getParam(
              'sportsVideo',
              ParamType.String,
            ),
            sportsImage: params.getParam(
              'sportsImage',
              ParamType.String,
            ),
            shortSportsName: params.getParam(
              'shortSportsName',
              ParamType.String,
            ),
            sportsImage2: params.getParam(
              'sportsImage2',
              ParamType.String,
            ),
            sportsImage3: params.getParam(
              'sportsImage3',
              ParamType.String,
            ),
            sportsImage4: params.getParam(
              'sportsImage4',
              ParamType.String,
            ),
            sportsImage5: params.getParam(
              'sportsImage5',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'MatchPreview',
          path: '/matchPreview',
          builder: (context, params) => MatchPreviewWidget(
            schoolOne: params.getParam(
              'schoolOne',
              ParamType.String,
            ),
            schoolTwo: params.getParam(
              'schoolTwo',
              ParamType.String,
            ),
            date: params.getParam(
              'date',
              ParamType.String,
            ),
            time: params.getParam(
              'time',
              ParamType.DateTime,
            ),
            location: params.getParam(
              'location',
              ParamType.String,
            ),
            schoolColor1: params.getParam(
              'schoolColor1',
              ParamType.Color,
            ),
            schoolColor2: params.getParam(
              'schoolColor2',
              ParamType.Color,
            ),
            sportsType: params.getParam(
              'sportsType',
              ParamType.String,
            ),
            commentNumber: params.getParam(
              'commentNumber',
              ParamType.int,
            ),
            docRef: params.getParam(
              'docRef',
              ParamType.String,
            ),
            dateForComment: params.getParam(
              'dateForComment',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AthleticTeams',
          path: '/athleticTeams',
          builder: (context, params) => const AthleticTeamsWidget(),
        ),
        FFRoute(
          name: 'MatchOverview',
          path: '/matchOverview',
          builder: (context, params) => MatchOverviewWidget(
            sportsType: params.getParam(
              'sportsType',
              ParamType.String,
            ),
            schoolOneName: params.getParam(
              'schoolOneName',
              ParamType.String,
            ),
            schoolNameTwo: params.getParam(
              'schoolNameTwo',
              ParamType.String,
            ),
            schoolOneScore: params.getParam(
              'schoolOneScore',
              ParamType.int,
            ),
            schoolTwoScore: params.getParam(
              'schoolTwoScore',
              ParamType.int,
            ),
            matchDate: params.getParam(
              'matchDate',
              ParamType.String,
            ),
            matchLocation: params.getParam(
              'matchLocation',
              ParamType.String,
            ),
            schoolOneImage: params.getParam(
              'schoolOneImage',
              ParamType.String,
            ),
            schoolTwoImage: params.getParam(
              'schoolTwoImage',
              ParamType.String,
            ),
            schoolOneColor: params.getParam(
              'schoolOneColor',
              ParamType.Color,
            ),
            schooltwoColor: params.getParam(
              'schooltwoColor',
              ParamType.Color,
            ),
            docRef: params.getParam(
              'docRef',
              ParamType.String,
            ),
            commentNumber: params.getParam(
              'commentNumber',
              ParamType.int,
            ),
            bestPlayers: params.getParam<String>(
              'bestPlayers',
              ParamType.String,
              isList: true,
            ),
          ),
        ),
        FFRoute(
          name: 'Fixtures',
          path: '/fixtures',
          builder: (context, params) => const FixturesWidget(),
        ),
        FFRoute(
          name: 'Statistics',
          path: '/statistics',
          builder: (context, params) => StatisticsWidget(
            mostWinsTeam: params.getParam(
              'mostWinsTeam',
              ParamType.String,
            ),
            thisWeekAthlete: params.getParam(
              'thisWeekAthlete',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminActivity',
          path: '/adminActivity',
          builder: (context, params) => const AdminActivityWidget(),
        ),
        FFRoute(
          name: 'UserOnboarding',
          path: '/userOnboarding',
          builder: (context, params) => const UserOnboardingWidget(),
        ),
        FFRoute(
          name: 'AdminMatchSchedule',
          path: '/adminMatchSchedule',
          builder: (context, params) => AdminMatchScheduleWidget(
            facultyTeam: params.getParam(
              'facultyTeam',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AddGame',
          path: '/addGame',
          builder: (context, params) => AddGameWidget(
            facultyTeam: params.getParam(
              'facultyTeam',
              ParamType.String,
            ),
            selectedDate: params.getParam(
              'selectedDate',
              ParamType.String,
            ),
            selectedDateForPicker: params.getParam(
              'selectedDateForPicker',
              ParamType.DateTime,
            ),
            teamPlayers: params.getParam<DocumentReference>(
              'teamPlayers',
              ParamType.DocumentReference,
              isList: true,
              collectionNamePath: ['User'],
            ),
            selectedDateParamGoogle: params.getParam(
              'selectedDateParamGoogle',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'AdminUpdateScore',
          path: '/adminUpdateScore',
          builder: (context, params) => const AdminUpdateScoreWidget(),
        ),
        FFRoute(
          name: 'AdminUpdateScore2',
          path: '/adminUpdateScore2',
          builder: (context, params) => AdminUpdateScore2Widget(
            schoolName: params.getParam(
              'schoolName',
              ParamType.String,
            ),
            schoolImage: params.getParam(
              'schoolImage',
              ParamType.String,
            ),
            docRef: params.getParam(
              'docRef',
              ParamType.String,
            ),
            matchDate: params.getParam(
              'matchDate',
              ParamType.String,
            ),
            matchLocation: params.getParam(
              'matchLocation',
              ParamType.String,
            ),
            matchDateforID: params.getParam(
              'matchDateforID',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'AdmineTeamPlayerList',
          path: '/admineTeamPlayerList',
          builder: (context, params) => const AdmineTeamPlayerListWidget(),
        ),
        FFRoute(
          name: 'AdminAddPlayers',
          path: '/adminAddPlayers',
          builder: (context, params) => const AdminAddPlayersWidget(),
        ),
        FFRoute(
          name: 'chat_ai_Screen',
          path: '/chatAiScreen',
          builder: (context, params) => const ChatAiScreenWidget(),
        ),
        FFRoute(
          name: 'notifications_List',
          path: '/notificationsList',
          builder: (context, params) => const NotificationsListWidget(),
        ),
        FFRoute(
          name: 'notification_Create',
          path: '/notificationCreate',
          builder: (context, params) => const NotificationCreateWidget(),
        ),
        FFRoute(
          name: 'ArticleLists',
          path: '/articleLists',
          builder: (context, params) => const ArticleListsWidget(),
        ),
        FFRoute(
          name: 'AdminStatisticsUpdate',
          path: '/adminStatisticsUpdate',
          builder: (context, params) => const AdminStatisticsUpdateWidget(),
        ),
        FFRoute(
          name: 'VideoPlayer',
          path: '/videoPlayer',
          builder: (context, params) => const VideoPlayerWidget(),
        ),
        FFRoute(
          name: 'VideoPlaying',
          path: '/videoPlaying',
          builder: (context, params) => const VideoPlayingWidget(),
        ),
        FFRoute(
          name: 'AdminVideoUpload',
          path: '/adminVideoUpload',
          builder: (context, params) => const AdminVideoUploadWidget(),
        ),
        FFRoute(
          name: 'EditProfile',
          path: '/editProfile',
          builder: (context, params) => const EditProfileWidget(),
        ),
        FFRoute(
          name: 'AdminUpdateBanner',
          path: '/adminUpdateBanner',
          builder: (context, params) => const AdminUpdateBannerWidget(),
        ),
        FFRoute(
          name: 'AdminDashBoard',
          path: '/adminDashBoard',
          builder: (context, params) => const AdminDashBoardWidget(),
        ),
        FFRoute(
          name: 'LivestreamVideos',
          path: '/livestreamVideos',
          builder: (context, params) => const LivestreamVideosWidget(),
        ),
        FFRoute(
          name: 'AdminAskGoogleCalendar',
          path: '/adminAskGoogleCalendar',
          builder: (context, params) => AdminAskGoogleCalendarWidget(
            title: params.getParam(
              'title',
              ParamType.String,
            ),
            description: params.getParam(
              'description',
              ParamType.String,
            ),
            startTime: params.getParam(
              'startTime',
              ParamType.DateTime,
            ),
            endTime: params.getParam(
              'endTime',
              ParamType.DateTime,
            ),
          ),
        ),
        FFRoute(
          name: 'LivestreamLists',
          path: '/livestreamLists',
          builder: (context, params) => const LivestreamListsWidget(),
        ),
        FFRoute(
          name: 'LiveStreamPage',
          path: '/liveStreamPage',
          builder: (context, params) => LiveStreamPageWidget(
            streamName: params.getParam(
              'streamName',
              ParamType.String,
            ),
            streamDescription: params.getParam(
              'streamDescription',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'LiveStreamViewer',
          path: '/liveStreamViewer',
          builder: (context, params) => LiveStreamViewerWidget(
            url: params.getParam(
              'url',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'LoginSuccessful',
          path: '/vauth',
          builder: (context, params) => const LoginSuccessfulWidget(),
        ),
        FFRoute(
          name: 'RosterDetail',
          path: '/rosterDetail',
          builder: (context, params) => const RosterDetailWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/welcomePage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).accent1,
                  child: Image.asset(
                    'assets/images/FL_App_Logo-removebg-preview.png',
                    fit: BoxFit.contain,
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class _RouteErrorBuilder extends StatefulWidget {
  const _RouteErrorBuilder({
    required this.state,
    required this.child,
  });

  final GoRouterState state;
  final Widget child;

  @override
  State<_RouteErrorBuilder> createState() => _RouteErrorBuilderState();
}

class _RouteErrorBuilderState extends State<_RouteErrorBuilder> {
  @override
  void initState() {
    super.initState();

    // Handle erroneous links from Firebase Dynamic Links.

    String? location;

    /*
    Handle `links` routes that have dynamic-link entangled with deep-link 
    */
    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.queryParameters.containsKey('deep_link_id')) {
      final deepLinkId = widget.state.uri.queryParameters['deep_link_id'];
      if (deepLinkId != null) {
        final deepLinkUri = Uri.parse(deepLinkId);
        final link = deepLinkUri.toString();
        final host = deepLinkUri.host;
        location = link.split(host).last;
      }
    }

    if (widget.state.uri.toString().startsWith('/link') &&
        widget.state.uri.toString().contains('request_ip_version')) {
      location = '/';
    }

    if (location != null) {
      SchedulerBinding.instance
          .addPostFrameCallback((_) => context.go(location!));
    }
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
