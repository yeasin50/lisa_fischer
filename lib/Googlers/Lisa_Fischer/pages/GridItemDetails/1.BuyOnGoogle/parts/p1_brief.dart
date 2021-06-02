import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

///intro Text within [ConstrainedBox] part
class P1GShopIntro extends StatefulWidget {
  @override
  _P1GShopIntroState createState() => _P1GShopIntroState();
}

class _P1GShopIntroState extends State<P1GShopIntro> {
  bool _isHover = false;

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
              text: TextSpan(
                  style: MyTextStyles().normatText,
                  text: "The ",
                  children: [
                TextSpan(
                  text: "newly launched Google Shopping ",
                  style: MyTextStyles().normatText.copyWith(
                        fontWeight: FontWeight.w600,
                        color: _isHover
                            ? kColorDash
                            : MyTextStyles().normatText.color,
                      ),

                  ///on hover Event Change the Text Color
                  /// we arent adding underLine, because of padding issue,
                  /// if we use shadow then it will failed to align with paragraph,
                  /// or we can make full paragraph with Text shadow to solve this 😅
                  onEnter: (event) => setState(() => _isHover = true),
                  onExit: (event) => setState(() => _isHover = false),
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
