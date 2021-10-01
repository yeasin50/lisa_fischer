import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: constraints.maxWidth * .75,
        ),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment(-1, -1),
              child: SizedBox(
                width: constraints.maxWidth * .4,
                child: P1LeveledIntro(),
              ),
            ),
            P2LeveledRow(
              maxWidth: constraints.maxWidth * .75, //last one
            ),
            SizedBox(
              width: constraints.maxWidth * .5,
              child: P3ApproachLeveled(),
            ),
            P4Mood2(maxWidth: constraints.maxWidth * .75),
            P5Leveled(maxWidth: constraints.maxWidth * .75)
          ],
        ),
      ),
    );
  }
}
