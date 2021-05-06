import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/awards.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/design_skills.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/education.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/experience.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/features.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/press.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/technical_skills.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/writing.dart';

/// better way is using Rows ✌
class GirdTest extends StatelessWidget {
  final _listWidget = [
    LisaEducation(),
    LisaExperience(),
    LisaDesignSkills(),
    LisaTechnicalSkills(),
    LisaAwards(),
    LisaFeture(),
    LisaPress(),
    LisaWriting()
  ];

  getChilds(BoxConstraints constraints) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[0],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[1],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[2],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[3],
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[4],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[5],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[6],
                ),
                Container(
                  width: constraints.maxWidth * .24,
                  child: _listWidget[7],
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.red,
            ),
          ],
        );
      }),
    );
  }
}
