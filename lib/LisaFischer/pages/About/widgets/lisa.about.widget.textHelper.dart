import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:portfolio/configs/configs.dart';

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

// Text normalText(String text) {
//   return Text(
//     text,
//     softWrap: true,
//     style: TextStyle(
//       fontFamily: kFproximaNova,
//       height: kNormalTextHeight,
//     ),
//   );
// }
