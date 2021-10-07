import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.textStyles.dart';
import 'lisa.about.widget.grid.dart';

class LisaEducation extends StatefulWidget {
  @override
  State<LisaEducation> createState() => _LisaEducationState();
}

class _LisaEducationState extends State<LisaEducation> {
  List<bool> _isHovered = List.generate(2, (index) => false);
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'EDUCATION',
      body: RichText(
        text: TextSpan(
          style: MyTextStyles().normatText,
          children: [
            TextSpan(
              text: "Savannah College of Art and Design",
              style: _isHovered[0]
                  ? MyTextStyles().subHeaderRow
                  : MyTextStyles().subHeaderRow.copyWith(color: kColorDash),
              onEnter: (event) => setState(() => _isHovered[0] = true),
              onExit: (event) => setState(() => _isHovered[0] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.scad.edu/"),
            ),
            TextSpan(
              text: "\nMaster of Arts, Graphic Design, \nJune 2016\n",
            ),
            TextSpan(
              text: "\nGeorge Washington University",
              style: _isHovered[1]
                  ? MyTextStyles().subHeaderRow
                  : MyTextStyles().subHeaderRow.copyWith(color: kColorDash),
              onEnter: (event) => setState(() => _isHovered[1] = true),
              onExit: (event) => setState(() => _isHovered[1] = false),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://www.gwu.edu/"),
            ),
            TextSpan(
              text:
                  "\nBachelor of Business, Administration,\nMarketing, May 2014\n",
            )
          ],
        ),
      ),
    );
  }
}
