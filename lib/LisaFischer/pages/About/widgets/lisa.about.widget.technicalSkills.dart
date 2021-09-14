import 'package:flutter/material.dart';

import 'lisa.about.widget.grid.dart';
import 'lisa.about.widget.textHelper.dart';

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
