import 'package:flutter/material.dart';

import '../../../constants/config.textStyles.dart';
import 'widgets.dart';

class LisaTechnicalSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'TECHNICAL SKILLS',
      body: Text(
        "Figma, Sketch, Photoshop, Illustrator, InDesign, Lightroom, After Effects, CSS3 + HTML5, InVision, Principle, Microsoft Office, Apple Keynote\n",
        style: AppTextStyles.normal,
      ),
    );
  }
}
