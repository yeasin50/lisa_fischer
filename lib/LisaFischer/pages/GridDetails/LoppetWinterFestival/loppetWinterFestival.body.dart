import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/LoppetWinterFestival/widgets/widgets.dart';
 

/// Body of `LoppetWinterFestival`
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                P1Intro(constraints: constraints),
                P2ImageAndRow(constraints: constraints),
                P3Approch(constraints: constraints),
                P4Postars(constraints: constraints),
                P5RaceDay(constraints: constraints),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
