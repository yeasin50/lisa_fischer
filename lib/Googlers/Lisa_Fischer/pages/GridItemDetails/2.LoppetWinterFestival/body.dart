import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/2.LoppetWinterFestival/bodyParts/p3_approach_.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/2.LoppetWinterFestival/bodyParts/p5_race_day.dart';

import 'bodyParts/p1_intro.dart';
import 'bodyParts/p2_image_row.dart';
import 'bodyParts/p4_posters.dart';

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
