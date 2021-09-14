import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'lisa.about.widget.grid.dart';

class LisaWriting extends StatefulWidget {
  @override
  _LisaWritingState createState() => _LisaWritingState();
}

class _LisaWritingState extends State<LisaWriting> {
  bool _isHover = false;

  final String _text =
      "Design a Winning Portfolio — Tips + Tricks from a Google Designer ✨﻿";

  _launchUrl() async {
    await launch(
        "https://www.nytimes.com/2019/05/14/technology/google-shopping-amazon-rivalry.html");
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle _hovertextStyle = TextStyle(
      /// there is attribute to handle space between underline and text
      /// thats' why we are creating `Shadow as Main text` and setting original text Color to transparent
      shadows: [
        Shadow(
          color: _isHover ? kColorDash : Colors.black87,
          offset: Offset(0, -4),
        )
      ],
      height: 1.5,
      fontFamily: kFproximaNova,
      // fontWeight: FontWeight.w700,
      fontSize: 14.5,
      color: Colors.transparent,
      decoration: TextDecoration.underline,
      decorationColor: _isHover ? Colors.blue : Colors.transparent,
      decorationThickness: _isHover ? 2 : 0.0,
      decorationStyle: TextDecorationStyle.solid,
    );

    return GridItem(
        title: "WRITING",
        body: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: InkWell(
            onTap: _launchUrl,
            hoverColor: Colors.transparent,
            onHover: (value) {
              setState(() {
                if (value)
                  _isHover = true;
                else
                  _isHover = false;
              });
            },
            child: Text(
              _text,
              style: _hovertextStyle,
            ),
          ),
        ));
  }
}
