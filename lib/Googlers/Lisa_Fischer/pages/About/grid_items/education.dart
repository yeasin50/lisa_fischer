import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

import 'grid.dart';

class LisaEducation extends StatelessWidget {
  final TextStyle _subHeaderStyle = TextStyle(
    fontFamily: kFproximaNova,
    letterSpacing: 1.3,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
  );
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'EDUCATION',
      body: EasyRichText(
        "Savannah College of Art and Design\n" +
            "Master of Arts, Graphic Design, June 2016 " +
            "George Washington University" +
            "Bachelor of Business, Administration,\nMarketing, May 2014\n",
        patternList: [
          EasyRichTextPattern(
            matchLeftWordBoundary: false,
            targetString: "Savannah College of Art and Design",
            style: _subHeaderStyle,
          ),
          EasyRichTextPattern(
            targetString: "George Washington University",
            style: _subHeaderStyle,
            matchLeftWordBoundary: false,
          ),
        ],
      ),
    );
  }
}
