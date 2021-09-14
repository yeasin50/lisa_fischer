import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.textStyles.dart';

import 'lisa.about.widget.grid.dart';

class LisaDesignSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'DESIGN SKILLS',
      body: EasyRichText(
        "Branding + Identity, UI + UX,  Art Direction, Motion Design, Concept Development, Typography, Environmental Graphics, Design Thinking, Design Research, Creative Strategy, Packaging, Illustration, Design for Sustainability ",
        defaultStyle: normalStyle,
      ),
    );
  }
}
