import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/Leveled/widgets/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
