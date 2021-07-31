import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import './bodyParts/p1_leveled_intro.leveled.dart';
import 'bodyParts/p2_row_items.leveled.dart';
import 'bodyParts/p3_approach.leveled.dart';
import 'bodyParts/p4_moodboard_.leveled.dart';
import 'bodyParts/p5_website.leveled.dart';

class LeveledDesktopBody extends StatelessWidget {
  const LeveledDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          MultiSliver(
            children: [
              // P1LeveledIntro(constraints: constraints),
              // P2LeveledRow(constraints: constraints),
              // P3ApproachLeveled(constraints: constraints),
              // P4Mood2(constraints: constraints),
              P5Leveled(constraints: constraints)
            ],
          ),
        ],
      ),
    );
  }
}
