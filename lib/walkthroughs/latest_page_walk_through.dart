import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walk_through_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';

// Focus widget keys for this walkthrough
final row1yk8nbvq = GlobalKey();
final containerFpst3hbw = GlobalKey();
final containerU58q3xps = GlobalKey();
final containerFj56lgyk = GlobalKey();

/// LatestPageWalkThrough
///
/// Hello! Welcome to FL. I will guide you through the app briefly so that you can get accustomed to the various features of the app:) Ready?
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: row1yk8nbvq,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'Hello! Welcome to FL. I will guide you through the app briefly so that you can get accustomed to the various features of the app:) Ready? ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: containerFpst3hbw,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => const WalkThroughWidget(
              description:
                  'Here, you can see the latest news of the Founders League, written by our school\'s newspaper club. ',
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: containerU58q3xps,
        enableOverlayTab: true,
        alignSkip: Alignment.topCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'Here, you can see various videos of the Founders League, like the recent highlights. ',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerFj56lgyk,
        enableOverlayTab: true,
        alignSkip: Alignment.topCenter,
        shape: ShapeLightFocus.RRect,
        color: FlutterFlowTheme.of(context).accent1,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => const WalkThroughWidget(
              icon:
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/founders-league-9fvk75/assets/verbdbz59myw/Screenshot_2024-08-14_at_9.03.21_PM.png',
              description:
                  'Here, you can see all the previous articles uploaded to the app. ',
            ),
          ),
        ],
      ),
    ];
