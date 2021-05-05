import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/awards.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/design_skills.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/education.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/experience.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/features.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/press.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/technical_skills.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/writing.dart';

class GirdTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
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
              crossAxisCount: 4,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
            ),
          ),
        ],
      ),
    );
  }
}
