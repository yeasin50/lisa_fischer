import 'package:flutter/material.dart';

import '../../../constants/const.textStyles.dart';
import 'widgets.dart';

class LisaDesignSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'DESIGN SKILLS',
      body: Text(
        "Branding + Identity, UI + UX,  Art Direction, Motion Design, Concept Development, Typography, Environmental Graphics, Design Thinking, Design Research, Creative Strategy, Packaging, Illustration, Design for Sustainability ",
        style: AppTextStyles.normal,
      ),
    );
  }
}
