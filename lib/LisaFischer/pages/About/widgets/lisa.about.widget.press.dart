import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.textStyles.dart';
import 'package:url_launcher/url_launcher.dart';

import 'lisa.about.widget.grid.dart';

class LisaPress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: "PRESS",
        body: EasyRichText(
          "The New York Times, " +
              "Forbes, TechCrunch, The Verge, Engadget, AdWeek, Search Engine Land",
          defaultStyle: normalStyle,
          patternList: [
            EasyRichTextPattern(
              targetString: "The New York Times",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.nytimes.com/2019/05/14/technology/google-shopping-amazon-rivalry.html"),
            ),
            EasyRichTextPattern(
              targetString: "Forbes",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.forbes.com/sites/johanmoreno/2019/07/21/googles-new-shopping-platform-is-now-live/#211dddfd116a"),
            ),
            EasyRichTextPattern(
              targetString: "TechCrunch",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://techcrunch.com/2019/10/03/redesigned-google-shopping-goes-live-with-price-tracking-google-lens-for-outfits-and-more/"),
            ),
            EasyRichTextPattern(
              targetString: "The Verge",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.theverge.com/2019/10/3/20897652/google-shopping-redesign-price-tracking-personalized-homepage-lens-express"),
            ),
            EasyRichTextPattern(
              targetString: "Engadget",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.engadget.com/2019-10-03-google-shopping-product-price-tracking.html"),
            ),
            EasyRichTextPattern(
              targetString: "AdWeek",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/"),
            ),
            EasyRichTextPattern(
              targetString: "Search Engine Land",
              matchWordBoundaries: false,
              style: linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch(
                    "https://searchengineland.com/googles-new-take-on-shopping-goes-live-in-u-s-322891"),
            ),
          ],
        ));
  }
}
