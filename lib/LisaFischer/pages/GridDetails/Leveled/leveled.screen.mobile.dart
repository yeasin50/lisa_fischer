import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            P1LeveledIntro(),
            P2LeveledRow(
              maxWidth: constraints.maxWidth,
              isMobile: true,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * .85,
              ),
              child: P3ApproachLeveled(),
            ),
            P4Mood2(
              maxWidth: constraints.maxWidth - 8.0,
              isMobile: true,
            ),
            P5Leveled(maxWidth: constraints.maxWidth - 8.0)
          ],
        ),
      ),
    );
  }
}
