import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

///intro Text within [ConstrainedBox] part
class P1GShopIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        buyOnGoogleText(),
        columnSpace,
        topicsSubtitle(),
        columnSpace,
        info(),
        columnSpace,
        briefDetailsOfGoogleShopping(),
      ],
    );
  }

  ///newly launched Google Shopping
  Row briefDetailsOfGoogleShopping() {
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 400,
          ),
          child: RichText(
              text: TextSpan(style: normalStyle, text: "The ", children: [
            TextSpan(
              text: "newly launched Google Shopping ",
              style: normalStyle.copyWith(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => launch("https://shopping.google.com/u/0/"),
            ),
            TextSpan(
              text:
                  "experience is available in the U.S. and France with the special ability to buy directly on Google. This feature required thoughtful brand strategy and design for each buying touchpoint throughout the Google Shopping journey in both countries.",
            ),
          ])),
        ),
      ],
    );
  }

  ///"Shop from thousands of stores directly on Google.
  Row info() {
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300),
          child: Text(
            "Shop from thousands of stores directly on Google.",
            style: MyTextStyles().sub26,
          ),
        ),
      ],
    );
  }

  ///`header=> Buy On Google`
  Row buyOnGoogleText() {
    return Row(children: [
      ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        child: Text(
          "Buy On Google",
          style: titleTextStyle,
        ),
      ),
    ]);
  }

  ///  BRAND STRATEGY / VISUAL DESIGN / UX,
  Row topicsSubtitle() {
    return Row(
      children: [
        EasyRichText(
          "BRAND STRATEGY / VISUAL DESIGN / UX",
          textAlign: TextAlign.left,
          defaultStyle: MyTextStyles().subtitle12,
          patternList: [
            EasyRichTextPattern(
              targetString: "/",
              hasSpecialCharacters: true,
              matchLeftWordBoundary: false,
              style: subTitleTextStyle.copyWith(
                color: kColorDash,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
