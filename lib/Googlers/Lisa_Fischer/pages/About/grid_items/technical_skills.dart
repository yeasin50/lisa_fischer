import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/text_helper.dart';

import 'grid.dart';

class LisaTechnicalSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'TECHNICAL SKILLS',
      body: normalText(
          "Figma, Sketch, Photoshop, Illustrator, InDesign, Lightroom, After Effects, CSS3 + HTML5, InVision, Principle, Microsoft Office, Apple Keynote\n"),
    );
  }
}
