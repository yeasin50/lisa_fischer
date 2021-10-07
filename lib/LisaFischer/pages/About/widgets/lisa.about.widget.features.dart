import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.textStyles.dart';
import '../../../../configs/configs.dart';
import 'lisa.about.widget.grid.dart';

class LisaFeture extends StatefulWidget {
  @override
  State<LisaFeture> createState() => _LisaFetureState();
}

class _LisaFetureState extends State<LisaFeture> {
  List<bool> _isHovered = List.generate(9, (index) => false);

  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: "FEATURES",
      body: Text.rich(
        TextSpan(
          style: MyTextStyles().normatText,
          children: [
            TextSpan(
              text: "LinkedIn Course: Building an Online Portfolio",
              onEnter: (event) => setState(() => _isHovered[0] = true),
              onExit: (event) => setState(() => _isHovered[0] = false),
              style: _isHovered[0]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                    "https://www.linkedin.com/learning/building-an-online-portfolio/welcome?autoplay=true&trk=learning-course_table-of-contents_video&upsellOrderOrigin=default_guest_learning",
                  );
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "Applied Arts Magazine",
              onEnter: (event) => setState(() => _isHovered[1] = true),
              onExit: (event) => setState(() => _isHovered[1] = false),
              style: _isHovered[1]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch("https://www.instagram.com/p/BbO2wLCldQB/");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "New Jersey Hills Newspaper",
              onEnter: (event) => setState(() => _isHovered[2] = true),
              onExit: (event) => setState(() => _isHovered[2] = false),
              style: _isHovered[2]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "http://www.newjerseyhills.com/echoes-sentinel/news/girl-with-watchung-roots-wins-art-magazine-award/article_98ab59d0-6148-5c40-a6e6-be2479296f45.html");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "Newark Academy Arts Blog",
              onEnter: (event) => setState(() => _isHovered[3] = true),
              onExit: (event) => setState(() => _isHovered[3] = false),
              style: _isHovered[3]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "http://www.newjerseyhills.com/echoes-sentinel/news/girl-with-watchung-roots-wins-art-magazine-award/article_98ab59d0-6148-5c40-a6e6-be2479296f45.html");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "New Jersey Hills Newspaper",
              onEnter: (event) => setState(() => _isHovered[4] = true),
              onExit: (event) => setState(() => _isHovered[4] = false),
              style: _isHovered[4]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "http://www.newjerseyhills.com/echoes-sentinel/news/girl-with-watchung-roots-wins-art-magazine-award/article_98ab59d0-6148-5c40-a6e6-be2479296f45.html");
                },
            ),
            TextSpan(text: ', '),

            //*SCAD Portfolio Curated Gallery,
            TextSpan(
              text: "SCAD Portfolio Curated Gallery",
              onEnter: (event) => setState(() => _isHovered[5] = true),
              onExit: (event) => setState(() => _isHovered[5] = false),
              style: _isHovered[5]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch("http://portfolios.scad.edu/");
                },
            ),
            TextSpan(text: ', '),

            TextSpan(
              text: "Medium",
              onEnter: (event) => setState(() => _isHovered[6] = true),
              onExit: (event) => setState(() => _isHovered[6] = false),
              style: _isHovered[6]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://medium.com/@aveyacreative/thoughts-on-the-new-google-logo-from-branding-pros-at-aveya-creative-cab4656cb3b9#.2oqlgpbo5");
                },
            ),
            TextSpan(text: ', '),

            TextSpan(
              text: "PRWeb",
              onEnter: (event) => setState(() => _isHovered[7] = true),
              onExit: (event) => setState(() => _isHovered[7] = false),
              style: _isHovered[7]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "http://www.prweb.com/releases/2015-1-21/aveya-logo/prweb12458558.htm");
                },
            ),
          ],
        ),
      ),

      // EasyRichText(
      //   "LinkedIn Course: Building an Online Portfolio," +
      //       " Applied Arts Magazine," +
      //       " Newark Academy Arts Blog," +
      //       " New Jersey Hills Newspaper, " +
      //       "SCAD Portfolio Curated Gallery, Medium, PRWeb",
      //   defaultStyle: normalStyle,
      //   patternList: [
      //     EasyRichTextPattern(
      //       targetString: "LinkedIn Course: Building an Online Portfolio",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch(
      //             "https://www.linkedin.com/learning/building-an-online-portfolio/welcome?autoplay=true&trk=learning-course_table-of-contents_video&upsellOrderOrigin=default_guest_learning"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "Applied Arts Magazine",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap =
      //             () => launch("https://www.instagram.com/p/BbO2wLCldQB/"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "Newark Academy Arts Blog",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch(
      //             "http://blogs.newarka.edu/nawam/2016/09/22/award-winning-design-lisa-fischer/"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "New Jersey Hills Newspaper",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch(
      //             "http://www.newjerseyhills.com/echoes-sentinel/news/girl-with-watchung-roots-wins-art-magazine-award/article_98ab59d0-6148-5c40-a6e6-be2479296f45.html"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "SCAD Portfolio Curated Gallery",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch("http://portfolios.scad.edu/"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "Medium",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch(
      //             "https://medium.com/@aveyacreative/thoughts-on-the-new-google-logo-from-branding-pros-at-aveya-creative-cab4656cb3b9#.2oqlgpbo5"),
      //     ),
      //     EasyRichTextPattern(
      //       targetString: "PRWeb",
      //       matchWordBoundaries: false,
      //       style: linkTextStyle,
      //       recognizer: TapGestureRecognizer()
      //         ..onTap = () => launch(
      //             "http://www.prweb.com/releases/2015-1-21/aveya-logo/prweb12458558.htm"),
      //     ),
    );
  }
}
