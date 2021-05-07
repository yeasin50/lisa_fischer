import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../components/text_styles.dart';

class LisaAwards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: "AWARDS",
      body: EasyRichText(
        "Graphis New Talent Annual 2016: Silver Award + Merit Award, " +
            "Adobe Design Achievement Awards 2016: Semifinalist," +
            " Applied Arts Magazine 2016: Winner, " +
            "Applied Arts Creative Excellence Award 2016: Winner," +
            " IDA International Design Awards 2016: Bronze Award, " +
            "SCAD Secession 2016: Bronze Award + Finalist," +
            " SCAD Academic Honors Award: 2014, 2015, " +
            "SCAD Achievement Honors Award: 2014, 2015," +
            " SCAD Artistic Honors Award 2015",
        defaultStyle: normalStyle,
        patternList: [
          EasyRichTextPattern(
            targetString: "Graphis",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://www.graphis.com/"),
          ),
          EasyRichTextPattern(
            targetString: "Adobe Design Achievement",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://www.adobeawards.com/"),
          ),
          EasyRichTextPattern(
            targetString: "Applied Arts Creative Excellence Award",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://www.appliedartsmag.com/"),
          ),
          EasyRichTextPattern(
            targetString: "Applied Arts Magazine",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://www.appliedartsmag.com/"),
          ),
          EasyRichTextPattern(
            targetString: "IDA International Design Awards",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://idesignawards.com/graphics.html"),
          ),
          EasyRichTextPattern(
            targetString: "SCAD Secession ",
            matchWordBoundaries: false,
            style: linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () =>
                  launch("https://issuu.com/scad/docs/scad-secession-2016/10"),
          ),
        ],
      ),
    );
  }
}
