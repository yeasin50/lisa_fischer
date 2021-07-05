import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../components/big_title_with_sub.dart';

class P1Intro extends StatefulWidget {
  final BoxConstraints constraints;

  const P1Intro({Key? key, required this.constraints}) : super(key: key);
  @override
  _P1IntroState createState() => _P1IntroState();
}

class _P1IntroState extends State<P1Intro> {
  bool _isHoverDuffy = false;
  bool _isHoverLoppet = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: widget.constraints.maxWidth * .5,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithSub(
                title: "Loppet Winter Festival",
                subtitle: "PRINTMAKING / ILLUSTRATION",
              ),
              columnSpace,
              Text(
                "A Minnesota Winter Tradition",
                style: MyTextStyles().textParan20,
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
                      style: MyTextStyles().normatText.copyWith(
                            color: kColorDash,
                          ),
                    ),
                    TextSpan(
                      text:
                          "A special thanks to Rick Love for his printmaking expertise.",
                      style: MyTextStyles().normatText.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
              ),
              columnSpace,
            ],
          ),
        )
      ],
    );
  }

  ///image

  /// Every year, ``Duffy Design`` ...visual theme of the festival.
  RichText briefDetails2() {
    return RichText(
      text: TextSpan(
        style: MyTextStyles().normatText,
        text: "Every year, ",
        children: [
          TextSpan(
            text: "Duffy Design ",
            style: MyTextStyles().normatText.copyWith(
                  fontWeight: FontWeight.w600,
                  color: _isHoverDuffy
                      ? kColorDash
                      : MyTextStyles().normatText.color,
                ),

            ///on hover Event Change the Text Color
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
        style: MyTextStyles().normatText,
        text: "The ",
        children: [
          TextSpan(
            text: "City of Lakes Loppet ",
            style: MyTextStyles().normatText.copyWith(
                  fontWeight: FontWeight.w600,
                  color: _isHoverLoppet
                      ? kColorDash
                      : MyTextStyles().normatText.color,
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
