import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class LisaFeture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: "FEATURES",
        body: EasyRichText(
          "LinkedIn Course: Building an Online Portfolio," +
              " Applied Arts Magazine," +
              " Newark Academy Arts Blog," +
              " New Jersey Hills Newspaper, " +
              "SCAD Portfolio Curated Gallery, Medium, PRWeb",
          defaultStyle: normalStyle,
          patternList: [
            EasyRichTextPattern(
              targetString: "LinkedIn Course: Building an Online Portfolio",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.linkedin.com/learning/building-an-online-portfolio/welcome?autoplay=true&trk=learning-course_table-of-contents_video&upsellOrderOrigin=default_guest_learning"),
            ),
            EasyRichTextPattern(
              targetString: "Applied Arts Magazine",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap =
                    () => launch("https://www.instagram.com/p/BbO2wLCldQB/"),
            ),
            EasyRichTextPattern(
              targetString: "Newark Academy Arts Blog",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "http://blogs.newarka.edu/nawam/2016/09/22/award-winning-design-lisa-fischer/"),
            ),
            EasyRichTextPattern(
              targetString: "New Jersey Hills Newspaper",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "http://www.newjerseyhills.com/echoes-sentinel/news/girl-with-watchung-roots-wins-art-magazine-award/article_98ab59d0-6148-5c40-a6e6-be2479296f45.html"),
            ),
            EasyRichTextPattern(
              targetString: "SCAD Portfolio Curated Gallery",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("http://portfolios.scad.edu/"),
            ),
            EasyRichTextPattern(
              targetString: "Medium",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://medium.com/@aveyacreative/thoughts-on-the-new-google-logo-from-branding-pros-at-aveya-creative-cab4656cb3b9#.2oqlgpbo5"),
            ),
            EasyRichTextPattern(
              targetString: "PRWeb",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "http://www.prweb.com/releases/2015-1-21/aveya-logo/prweb12458558.htm"),
            ),
          ],
        ));
  }
}
