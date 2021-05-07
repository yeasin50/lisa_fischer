import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

Padding subHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0),
    child: Text(
      title,
      style: TextStyle(
        fontFamily: kFproximaNova,
        letterSpacing: 1.3,
        height: kNormalTextHeight,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      ),
    ),
  );
}

Text header(String title) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: kFproximaNova,
      fontSize: 21,
      height: kNormalTextHeight,
    ),
  );
}

Text normalText(String text) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
      fontFamily: kFproximaNova,
      height: kNormalTextHeight,
    ),
  );
}
