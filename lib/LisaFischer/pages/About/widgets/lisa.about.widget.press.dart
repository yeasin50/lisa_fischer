import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.textStyles.dart';
import '../../../../configs/configs.dart';
import 'lisa.about.widget.grid.dart';

class LisaPress extends StatefulWidget {
  @override
  State<LisaPress> createState() => _LisaPressState();
}

class _LisaPressState extends State<LisaPress> {
  List<bool> _isHovered = List.generate(7, (index) => false);

  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: "PRESS",
      body: RichText(
        text: TextSpan(
          style: MyTextStyles().normatText,
          children: [
            TextSpan(
              text: "The New York Times",
              onEnter: (event) => setState(() => _isHovered[0] = true),
              onExit: (event) => setState(() => _isHovered[0] = false),
              style: _isHovered[0]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                    "https://www.nytimes.com/2019/05/14/technology/google-shopping-amazon-rivalry.html",
                  );
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "Forbes",
              onEnter: (event) => setState(() => _isHovered[1] = true),
              onExit: (event) => setState(() => _isHovered[1] = false),
              style: _isHovered[1]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://www.forbes.com/sites/johanmoreno/2019/07/21/googles-new-shopping-platform-is-now-live/#211dddfd116a");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "TechCrunch",
              onEnter: (event) => setState(() => _isHovered[2] = true),
              onExit: (event) => setState(() => _isHovered[2] = false),
              style: _isHovered[2]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://techcrunch.com/2019/10/03/redesigned-google-shopping-goes-live-with-price-tracking-google-lens-for-outfits-and-more/");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "The Verge",
              onEnter: (event) => setState(() => _isHovered[3] = true),
              onExit: (event) => setState(() => _isHovered[3] = false),
              style: _isHovered[3]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://www.theverge.com/2019/10/3/20897652/google-shopping-redesign-price-tracking-personalized-homepage-lens-express");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "Engadget",
              onEnter: (event) => setState(() => _isHovered[4] = true),
              onExit: (event) => setState(() => _isHovered[4] = false),
              style: _isHovered[4]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://www.engadget.com/2019-10-03-google-shopping-product-price-tracking.html");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "AdWeek",
              onEnter: (event) => setState(() => _isHovered[5] = true),
              onExit: (event) => setState(() => _isHovered[5] = false),
              style: _isHovered[5]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                      "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/");
                },
            ),
            TextSpan(text: ', '),
            TextSpan(
              text: "Search Engine Land",
              onEnter: (event) => setState(() => _isHovered[6] = true),
              onExit: (event) => setState(() => _isHovered[6] = false),
              style: _isHovered[6]
                  ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                  : MyTextStyles().linkTextStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch(
                    "https://searchengineland.com/googles-new-take-on-shopping-goes-live-in-u-s-322891",
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
