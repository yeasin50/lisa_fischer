import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

Padding subHeader(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Text(
      title,
      style: TextStyle(
        fontFamily: kFproximaNova,
        letterSpacing: 1.3,
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
    ),
  );
}

Text normalText(String text) {
  return Text(
    text,
    softWrap: true,
    style: TextStyle(
      fontFamily: kFproximaNova,
    ),
  );
}
