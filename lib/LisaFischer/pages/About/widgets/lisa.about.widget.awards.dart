import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.constants.dart';
import '../../../../configs/config.textStyles.dart';
import '../../../../configs/configs.dart';
import 'lisa.about.widget.grid.dart';

class LisaAwards extends StatefulWidget {
  @override
  State<LisaAwards> createState() => _LisaAwardsState();
}

class _LisaAwardsState extends State<LisaAwards> {
  List<bool> _isHovered = List.generate(7, (index) => false);

  final _linkTextStyle = MyTextStyles().normatText.copyWith(
        color: linkTextColor,
      );

  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: "AWARDS",
      body: RichText(
        text: TextSpan(
          style: MyTextStyles().normatText,
          children: [
            TextSpan(
              text: "Graphis ",
              onEnter: (event) => setState(() => _isHovered[0] = true),
              onExit: (event) => setState(() => _isHovered[0] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.graphis.com/"),
              style: _isHovered[0]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),
            TextSpan(
              text: 'New Talent Annual 2016: Silver Award + Merit Award, ',
            ),

            //* Adobe Design Achievement Awards 2016: Semifinalist,
            TextSpan(
              text: "Adobe Design Achievement Awards ",
              onEnter: (event) => setState(() => _isHovered[1] = true),
              onExit: (event) => setState(() => _isHovered[1] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.adobeawards.com/"),
              style: _isHovered[1]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),

            TextSpan(
              text: '2016: Silver Award + Merit Award, ',
            ),

            // Applied Arts Magazine 2016:
            TextSpan(
              text: "Applied Arts Magazine ",
              onEnter: (event) => setState(() => _isHovered[2] = true),
              onExit: (event) => setState(() => _isHovered[2] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.appliedartsmag.com/"),
              style: _isHovered[2]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),
            TextSpan(
              text: "2016: Winner, ",
            ),

            //* Applied Arts Creative Excellence Award 2016: Winner,
            TextSpan(
              text: "Applied Arts ",
              onEnter: (event) => setState(() => _isHovered[3] = true),
              onExit: (event) => setState(() => _isHovered[3] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.appliedartsmag.com/"),
              style: _isHovered[3]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),

            TextSpan(
              text: "Creative Excellence Award 2016: Winner, ",
            ),

            TextSpan(
              text: "IDA International Design Awards ",
              onEnter: (event) => setState(() => _isHovered[4] = true),
              onExit: (event) => setState(() => _isHovered[4] = false),
              recognizer: TapGestureRecognizer()
                ..onTap =
                    () => launch("https://idesignawards.com/graphics.html"),
              style: _isHovered[4]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),

            TextSpan(
              text: '2016: Bronze Award, ',
            ),

            //* SCAD Secession
            TextSpan(
              text: "SCAD Secession ",
              onEnter: (event) => setState(() => _isHovered[5] = true),
              onExit: (event) => setState(() => _isHovered[5] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://issuu.com/scad/docs/scad-secession-2016/10"),
              style: _isHovered[5]
                  ? _linkTextStyle.copyWith(
                      color: kColorDash,
                    )
                  : _linkTextStyle,
            ),

            TextSpan(
              text: '2016: Bronze Award + Finalist, ',
            ),

            TextSpan(
              text:
                  ' SCAD Academic Honors Award: 2014, 2015, SCAD Achievement Honors Award: 2014, 2015, SCAD Artistic Honors Award 2015 ',
            ),
          ],
        ),
      ),
    );
  }
}
