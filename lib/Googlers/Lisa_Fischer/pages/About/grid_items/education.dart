import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';

import 'grid.dart';

class LisaEducation extends StatelessWidget {
  final TextStyle _subHeaderStyle = TextStyle(
    fontFamily: kFproximaNova,
    letterSpacing: 1.3,
    height: 1.1,
    fontSize: 14.5,
    fontWeight: FontWeight.w700,
    color: Colors.black87,
  );
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: 'EDUCATION',
        body: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: "Savannah College of Art and Design",
              style: _subHeaderStyle,
            ),
            TextSpan(
              text: "\nMaster of Arts, Graphic Design, \nJune 2016\n",
              style: normalStyle,
            ),
            TextSpan(
              text: "\nGeorge Washington University",
              style: _subHeaderStyle,
            ),
            TextSpan(
              text:
                  "\nBachelor of Business, Administration,\nMarketing, May 2014\n",
              style: normalStyle,
            )
          ]),
        )

        //     EasyRichText(
        //   "Savannah College of Art and Design \n" +
        //       "Master of Arts, Graphic Design, June 2016 " +
        //       "George Washington University" +
        //       "Bachelor of Business, Administration,\nMarketing, May 2014\n",
        //   defaultStyle: normalStyle,
        //   patternList: [
        //     EasyRichTextPattern(
        //       matchLeftWordBoundary: false,
        //       targetString: "Savannah College of Art and Design",
        //       style: _subHeaderStyle,
        //     ),
        //     EasyRichTextPattern(
        //       targetString: "George Washington University",
        //       style: _subHeaderStyle,
        //       matchLeftWordBoundary: false,
        //     ),
        //   ],
        // ),
        );
  }
}
