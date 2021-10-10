import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.constants.dart';
import '../../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Buy On Google",
          style: AppTextStyles.title,
        ),
        columnSpace,
        //  BRAND STRATEGY / VISUAL DESIGN / UX,
        SubtitleCategoryOfWork(
          rolls: ["BRAND STRATEGY", "VISUAL DESIGN", 'UX'],
        ),
        columnSpace,
        Text(
          "Shop from thousands of stores directly on Google.",
          style: AppTextStyles.sub26,
        ),
        columnSpace,
        briefDetailsOfGoogleShopping(),
        SizedBox(
          height: columnSpace.height! * 3,
        )
      ],
    );
  }

  ///newly launched Google Shopping
  Widget briefDetailsOfGoogleShopping() {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.normal,
        text: "The ",
        children: [
          TextSpan(
            text: "newly launched Google Shopping ",
            style: AppTextStyles.normal.copyWith(
              fontWeight: FontWeight.w600,
              color: _isHover ? kColorDash : AppTextStyles.normal.color,
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
        ],
      ),
    );
  }
}
