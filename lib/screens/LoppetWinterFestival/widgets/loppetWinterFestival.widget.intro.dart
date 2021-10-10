import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

class P1Intro extends StatefulWidget {
  const P1Intro({
    Key? key,
  }) : super(key: key);
  @override
  _P1IntroState createState() => _P1IntroState();
}

class _P1IntroState extends State<P1Intro> {
  bool _isHoverDuffy = false;
  bool _isHoverLoppet = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Loppet Winter Festival",
          style: AppTextStyles.title,
        ),
        SubtitleCategoryOfWork(
          rolls: ['PRINTMAKING', 'ILLUSTRATION'],
        ),
        columnSpace,
        Text(
          "A Minnesota Winter Tradition",
          style: AppTextStyles.textParan20,
        ),
        SizedBox(
          height: 10,
        ),
        briefDetails1(),
        columnSpace,
        briefDetails2(),
        columnSpace,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "* ",
                style: AppTextStyles.normal.copyWith(
                  color: kColorDash,
                ),
              ),
              TextSpan(
                text:
                    "A special thanks to Rick Love for his printmaking expertise.",
                style: AppTextStyles.normal.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        columnSpace,
      ],
    );
  }

  ///image

  /// Every year, ``Duffy Design`` ...visual theme of the festival.
  RichText briefDetails2() {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.normal,
        text: "Every year, ",
        children: [
          TextSpan(
            text: "Duffy Design ",
            style: AppTextStyles.normal.copyWith(
              fontWeight: FontWeight.w600,
              color: _isHoverDuffy ? kColorDash : AppTextStyles.normal.color,
            ),

            /// on hover Event Change the Text Color
            /// we arent adding underLine, because of padding issue,
            /// if we use shadow then it will failed to align with paragraph,
            /// or we can make full paragraph with Text shadow to solve this 😅
            onEnter: (event) => setState(() => _isHoverDuffy = true),
            onExit: (event) => setState(() => _isHoverDuffy = false),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("http://duffy.com/"),
          ),
          TextSpan(
            text:
                "a limited edition, hand screen-printed poster available for purchase that captures the magic of the festival. I had the pleasure of designing the 2017 poster and visual theme of the festival.",
          ),
        ],
      ),
    );
  }

  /// The `City of Lakes Loppet`...biking, skijoring, and snow sculpting.
  RichText briefDetails1() {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.normal,
        text: "The ",
        children: [
          TextSpan(
            text: "City of Lakes Loppet ",
            style: AppTextStyles.normal.copyWith(
              fontWeight: FontWeight.w600,
              color: _isHoverLoppet ? kColorDash : AppTextStyles.normal.color,
            ),

            ///on hover Event Change the Text Color
            /// we arent adding underLine, because of padding issue,
            /// if we use shadow then it will failed to align with paragraph,
            /// or we can make full paragraph with Text shadow to solve this 😅
            onEnter: (event) => setState(() => _isHoverLoppet = true),
            onExit: (event) => setState(() => _isHoverLoppet = false),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch("https://www.loppet.org/events/festival/"),
          ),
          TextSpan(
            text:
                "is a weekend-long winter festival in Minneapolis consisting of 25+ tournaments and races. The annual festival is known nationwide for its urban cross-country ski race that ranks as the second biggest cross country skiing event in the U.S. Other key events include fat tire biking, skijoring, and snow sculpting.",
          ),
        ],
      ),
    );
  }
}
