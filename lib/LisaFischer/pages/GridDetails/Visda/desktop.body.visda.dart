import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/Visda/widgets/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';

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
