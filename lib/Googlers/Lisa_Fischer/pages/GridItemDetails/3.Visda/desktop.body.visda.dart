import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'bodyParts/p1_intro.visd.dart';
import 'bodyParts/p2_row_items.visd.dart';
import 'bodyParts/p3_approach.visd.dart';
import 'bodyParts/p4_summit.visd.dart';
import 'bodyParts/p5_wayfinding.visd.dart';

class VisdaDesktopBody extends StatelessWidget {
  const VisdaDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          MultiSliver(
            children: [
              // P1VisdIntro(constraints: constraints),
              // P2VisdaRow(constraints: constraints),
              // P3ApproachVisD(constraints: constraints),
              // P4SummitVisD(constraints: constraints),
              P5WayFinding(constraints: constraints)
            ],
          ),
        ],
      ),
    );
  }
}
