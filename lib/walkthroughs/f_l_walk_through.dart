import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walk_through_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final textCfpozlyl = GlobalKey();
final listViewTlkzsxgl = GlobalKey();
final listViewJoh9o3eh = GlobalKey();
final columnAkix9lyp = GlobalKey();

/// FLWalkThrough
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textCfpozlyl,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'In this page, you can check various news and infos about the Founders League. Let\'s go through them one by one. ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: listViewTlkzsxgl,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'You can check the upcoming matches of your schol here. To see the full list of match fixtures, you can find it below. ',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: listViewJoh9o3eh,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'You can check various informations, such as match results and fixtures and statistics of the season. ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: columnAkix9lyp,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'CAESqBJDZzlDZFhSMGIyNWZPSFUzYnpCa2RqQVlDU0xoQVVxbkFRb3BDZ3hQY0dWdUlGZGxZbkJoWjJVUkFBQUFBQUFBTGtBNkFoQUpRQVY2Q2hJSWJuQnFiR2gxTWpZU0pnb2tDTktRUEJJTlRXRjBaWEpwWVd4SlkyOXVjeUFBTWcxaGNuSnZkMTl2ZFhSM1lYSmtHUUFBQUFBQUFBaEFTUUFBQUFBQUFQQS9VZ0lRQkZvQ0NBQnlDeWdDTVFBQUFBQUFBQ0JBZWhJSkFBQUFBQUFBT0VBWkFBQUFBQUFBT0VEQ0FSWUtDUWtBQUFBQUFFQmxRQklKQ1FBQUFBQUFBRVJBV2hJSkFBQUFBQUFBV1VBUkFBQUFBQUNBUVVCeUVna0FBQUFBQUFEd3Z4RUFBQUFBQUFBQUFQb0RBUElGQ1FrQUFBQUFBQUR3UDJJQWlnSGRDeExXQ3dvSWREZHVhV2R5ZUc0YXlRc2loUUVLU1FwSENBcFNReElpRWlBSURFSWNJaG9LRmdvS2MyTm9iMjlzVG1GdFpSSUliSEk1TXpoMGVua1FBUklaQ2hjU0ZVRjJiMjRnVDJ4a0lFWmhjbTF6SUZOamFHOXZiQ0lDQ0FFU09Bb0llbmhsYURodGEyTVNMQ29mQ2gxb2RIUndjem92TDNkM2R5NWhkbTl1YjJ4a1ptRnliWE11WTI5dEw2b0NDR3d5YURrME5YWTFJbjRLU0FwR0NBcFNRaElpRWlBSURFSWNJaG9LRmdvS2MyTm9iMjlzVG1GdFpSSUliSEk1TXpoMGVua1FBUklZQ2hZU0ZFTm9iMkYwWlNCU2IzTmxiV0Z5ZVNCSVlXeHNJZ0lJQVJJeUNnaG5OWGgxZGpVME5SSW1LaGtLRjJoMGRIQnpPaTh2ZDNkM0xtTm9iMkYwWlM1bFpIVXZxZ0lJWlhadGJXUnNZWG9paGdFS1N3cEpDQXBTUlJJaUVpQUlERUljSWhvS0Znb0tjMk5vYjI5c1RtRnRaUklJYkhJNU16aDBlbmtRQVJJYkNoa1NGMVJvWlNCRmRHaGxiQ0JYWVd4clpYSWdVMk5vYjI5c0lnSUlBUkkzQ2doeGEyUnJZMjVxTWhJcktoNEtIR2gwZEhCek9pOHZkM2QzTG1WMGFHVnNkMkZzYTJWeUxtOXlaeStxQWdocmRtZDNNRGxpYmlLQkFRcElDa1lJQ2xKQ0VpSVNJQWdNUWh3aUdnb1dDZ3B6WTJodmIyeE9ZVzFsRWdoc2Nqa3pPSFI2ZVJBQkVoZ0tGaElVVkdobElFaHZkR05vYTJsemN5QlRZMmh2YjJ3aUFnZ0JFalVLQ0hBMlltOXdiM0EwRWlrcUhBb2FhSFIwY0hNNkx5OTNkM2N1YUc5MFkyaHJhWE56TG05eVp5K3FBZ2c0TnpseU1qQm1OQ0o2Q2o4S1BRZ0tVamtTSWhJZ0NBeENIQ0lhQ2hZS0NuTmphRzl2YkU1aGJXVVNDR3h5T1RNNGRIcDVFQUVTRHdvTkVndExaVzUwSUZOamFHOXZiQ0lDQ0FFU053b0lkMnhyYjJNeGJXa1NLeW9lQ2h4b2RIUndjem92TDNkM2R5NXJaVzUwTFhOamFHOXZiQzVsWkhVdnFnSUlkR2M1YUhnM2J6QWlpZ0VLU3dwSkNBcFNSUklpRWlBSURFSWNJaG9LRmdvS2MyTm9iMjlzVG1GdFpSSUliSEk1TXpoMGVua1FBUkliQ2hrU0YwdHBibWR6ZDI5dlpDQlBlR1p2Y21RZ1UyTm9iMjlzSWdJSUFSSTdDZ2cyYlhsNVpuWnFOaEl2S2lJS0lHaDBkSEJ6T2k4dmQzZDNMbXRwYm1kemQyOXZaRzk0Wm05eVpDNXZjbWN2cWdJSU9ETnBNemhxY2praWhnRUtTUXBIQ0FwU1F4SWlFaUFJREVJY0lob0tGZ29LYzJOb2IyOXNUbUZ0WlJJSWJISTVNemgwZW5rUUFSSVpDaGNTRlV4dmIyMXBjeUJEYUdGbVptVmxJRk5qYUc5dmJDSUNDQUVTT1FvSU5XVjRhek01YzNZU0xTb2dDaDVvZEhSd2N6b3ZMM2QzZHk1c2IyOXRhWE5qYUdGbVptVmxMbTl5WnkrcUFnaGhPWGhpWVdJeU55Si9Da2dLUmdnS1VrSVNJaElnQ0F4Q0hDSWFDaFlLQ25OamFHOXZiRTVoYldVU0NHeHlPVE00ZEhwNUVBRVNHQW9XRWhSTmFYTnpJRkJ2Y25SbGNpZHpJRk5qYUc5dmJDSUNDQUVTTXdvSVpuSnBjWEp2WjNRU0p5b2FDaGhvZEhSd2N6b3ZMM2QzZHk1d2IzSjBaWEp6TG05eVp5K3FBZ2c0Y0hCNVkyMTZkQ0o5Q2tNS1FRZ0tVajBTSWhJZ0NBeENIQ0lhQ2hZS0NuTmphRzl2YkU1aGJXVVNDR3h5T1RNNGRIcDVFQUVTRXdvUkVnOVVhR1VnVkdGbWRDQlRZMmh2YjJ3aUFnZ0JFallLQ0hCbU5XMTRkbkJvRWlvcUhRb2JhSFIwY0hNNkx5OTNkM2N1ZEdGbWRITmphRzl2YkM1dmNtY3ZxZ0lJWkROek9UUmllREFpaUFFS1NncElDQXBTUkJJaUVpQUlERUljSWhvS0Znb0tjMk5vYjI5c1RtRnRaUklJYkhJNU16aDBlbmtRQVJJYUNoZ1NGbFJ5YVc1cGRIa3RVR0YzYkdsdVp5QlRZMmh2YjJ3aUFnZ0JFam9LQ0RreU1tTjJlbUpwRWk0cUlRb2ZhSFIwY0hNNkx5OTNkM2N1ZEhKcGJtbDBlWEJoZDJ4cGJtY3ViM0puTDZvQ0NIZ3piWHA0TkROaUlvZ0JDa1lLUkFnS1VrQVNJaElnQ0F4Q0hDSWFDaFlLQ25OamFHOXZiRTVoYldVU0NHeHlPVE00ZEhwNUVBRVNGZ29VRWhKWFpYTjBiV2x1YzNSbGNpQlRZMmh2YjJ3aUFnZ0JFajRLQ0hrNWFHVnROWFJxRWpJcUpRb2phSFIwY0hNNkx5OTNkM2N1ZDJWemRHMXBibk4wWlhJdGMyTm9iMjlzTG05eVp5K3FBZ2gxTW1Ga2NHeHVheWdCT2dod04ybDNiRFkzT0JvQ0NBSENBUUE9',
              description:
                  'Here, you get plentiful information about the Founders League and get to know the athletic landscape of your school.',
            ),
          ),
        ],
      ),
    ];
