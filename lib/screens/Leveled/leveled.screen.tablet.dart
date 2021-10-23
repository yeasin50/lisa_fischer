import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth * .85;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: maxWidth,
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
                      maxWidth: maxWidth, //last one
                    ),
                    SizedBox(
                      width: constraints.maxWidth * .7,
                      child: P3ApproachLeveled(),
                    ),
                    P4Mood2(maxWidth: maxWidth),
                    P5Leveled(maxWidth: maxWidth),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
