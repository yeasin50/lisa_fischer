import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/config.constants.dart';
import '../../../../configs/configs.dart';
import 'lisa.about.widget.grid.dart';

class LisaWriting extends StatefulWidget {
  @override
  _LisaWritingState createState() => _LisaWritingState();
}

class _LisaWritingState extends State<LisaWriting> {
  bool _isHovered = false;

  final String _text =
      "Design a Winning Portfolio — Tips + Tricks from a Google Designer ✨﻿";

  _launchUrl() async {
    await launch(
        "https://www.nytimes.com/2019/05/14/technology/google-shopping-amazon-rivalry.html");
  }

  @override
  Widget build(BuildContext context) {
    /// rm: underline effect to have the same UI
    // final TextStyle _hovertextStyle = TextStyle(
    //   /// there is attribute to handle space between underline and text
    //   /// thats' why we are creating `Shadow as Main text` and setting original text Color to transparent
    //   // shadows: [
    //   //   Shadow(
    //   //     color: _isHover ? kColorDash : Colors.black87,
    //   //     offset: Offset(0, -4),
    //   //   )
    //   // ],
    //   height: 1.5,
    //   fontFamily: kFproximaNova,
    //   // fontWeight: FontWeight.w700,
    //   fontSize: 14.5,
    //   color: Colors.transparent,
    //   decoration: TextDecoration.underline,
    //   decorationColor: _isHovered ? Colors.blue : Colors.transparent,
    //   decorationThickness: _isHovered ? 2 : 0.0,
    //   decorationStyle: TextDecorationStyle.solid,
    // );

    return GridItem(
        title: "WRITING",
        body: RichText(
          text: TextSpan(
            text: _text,
            style: _isHovered
                ? MyTextStyles().linkTextStyle.copyWith(color: kColorDash)
                : MyTextStyles().linkTextStyle,
            onEnter: (event) => setState(() => _isHovered = true),
            onExit: (event) => setState(() => _isHovered = false),
            recognizer: TapGestureRecognizer()..onTap = _launchUrl,
          ),
        )
        // Padding(
        //   padding: const EdgeInsets.only(top: 4.0),
        //   child: InkWell(
        //     onTap: _launchUrl,
        //     hoverColor: Colors.transparent,
        //     onHover: (value) {
        //       setState(() {
        //         if (value)
        //           _isHover = true;
        //         else
        //           _isHover = false;
        //       });
        //     },
        //     child: Text(
        //       _text,
        //       style: _hovertextStyle,
        //     ),
        //   ),
        // ),

        );
  }
}
