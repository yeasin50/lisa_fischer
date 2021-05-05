import 'package:flutter/material.dart';

import 'package:portfolio/config/constants.dart';

import 'components/profile_image.dart';
import 'grid_items/awards.dart';
import 'grid_items/design_skills.dart';
import 'grid_items/education.dart';
import 'grid_items/experience.dart';
import 'grid_items/features.dart';
import 'grid_items/press.dart';
import 'grid_items/technical_skills.dart';
import 'grid_items/writing.dart';

// ignore: must_be_immutable
class LSAboutPageBody extends StatelessWidget {
  LSAboutPageBody({required this.gridItemCount});
  int gridItemCount;
  final String _texts1 =
      "She specializes in bridging the tenets of brand identity with UX/UI to create innovative and impactful design solutions for the modern age.";
  final String _texts2 =
      "Aside from design, Lisa plays piano, runs long distances, and consistently binges episodes of 30 Rock.";

  final TextStyle _textStyleS = TextStyle(
    fontFamily: kFproximaNova,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    print("rebuild Body");

    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        ///TODO:: make layouytbuilder use constrain and set % width
        buildSliverGrid(),
        SliverList(
            delegate: SliverChildListDelegate([
          Divider(
            // height: 12,
            color: Colors.red,
            thickness: 2.4,
          ),
        ])),
        SliverGrid(
          delegate: SliverChildListDelegate([
            LisaEducation(),
            LisaExperience(),
            LisaDesignSkills(),
            LisaTechnicalSkills(),
            LisaAwards(),
            LisaFeture(),
            LisaPress(),
            LisaWriting(),
          ]),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: gridItemCount,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          ),
        ),
      ],
    );
  }

  /// top details `image & intro`
  SliverGrid buildSliverGrid() {
    return SliverGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 10,
      children: [
        Row(
          children: [
            ProfileImage(),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Lisa Fischer",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: "ProximaNova",
                color: Color.fromRGBO(5, 173, 134, .21),
                fontWeight: FontWeight.w700,
                fontSize: 65,
              ),
            ),
            Text(
              "👋",
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              "Lisa is a designer focused on building brands and creating digital experiences — currently working at Google.",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              _texts1 + "\n" + _texts2,
              style: _textStyleS,
            ),
            Text(
              "— Based in the San Francisco Bay area",
              style: _textStyleS,
            ),
          ],
        )
      ],
    );
  }
}
