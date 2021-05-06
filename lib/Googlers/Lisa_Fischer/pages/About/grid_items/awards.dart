import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';
import 'package:portfolio/config/constants.dart';

class LisaAwards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _style = TextStyle(
      fontFamily: kFproximaNova,
    );

    final TextStyle _linkTextStyle = TextStyle(
      fontFamily: kFproximaNova,
      color: Colors.green,
    );
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
        defaultStyle: _style,
        patternList: [
          EasyRichTextPattern(
            targetString: "Graphis",
            matchWordBoundaries: false,
            style: _linkTextStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () => print('Tap Here onTap'),
          ),
          EasyRichTextPattern(
            targetString: "Adobe Design Achievement",
            matchWordBoundaries: false,
            style: _linkTextStyle,
          ),
          EasyRichTextPattern(
            targetString: "Applied Arts Creative Excellence Award",
            matchWordBoundaries: false,
            style: _linkTextStyle,
          ),
          EasyRichTextPattern(
            targetString: "Applied Arts Magazine",
            matchWordBoundaries: false,
            style: _linkTextStyle,
          ),
          EasyRichTextPattern(
            targetString: "IDA International Design Awards",
            matchWordBoundaries: false,
            style: _linkTextStyle,
          ),
          EasyRichTextPattern(
            targetString: "SCAD Secession ",
            matchWordBoundaries: false,
            style: _linkTextStyle,
          ),
        ],
      ),
    );
  }
}
