import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/text_styles.dart';

import 'grid.dart';

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
