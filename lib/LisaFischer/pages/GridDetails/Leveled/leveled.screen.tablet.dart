import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * .85,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment(-1, -1),
                    child: SizedBox(
                      width: constraints.maxWidth * .4,
                      child: P1LeveledIntro(),
                    ),
                  ),
                  P2LeveledRow(
                    maxWidth: constraints.maxWidth * .85, //last one
                  ),
                  SizedBox(
                    width: constraints.maxWidth * .7,
                    child: P3ApproachLeveled(),
                  ),
                  P4Mood2(maxWidth: constraints.maxWidth * .85),
                  P5Leveled(maxWidth: constraints.maxWidth * .85),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
