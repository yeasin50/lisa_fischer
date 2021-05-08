import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

final TextStyle titleTextStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Color.fromRGBO(5, 173, 134, .21),
  fontWeight: FontWeight.w700,
  fontSize: 80,
);

// TextStyle(
//               fontSize: 21,
//               fontWeight: FontWeight.w700,
//               height: kNormalTextHeight,
//               letterSpacing: .27,
//             )

final TextStyle subHeaderTextStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Colors.black.withOpacity(
    .93,
  ),
  fontSize: 19.5,
  height: kNormalTextHeight,
  letterSpacing: 1,
);

final TextStyle normalStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Colors.black,
  height: kNormalTextHeight,
);

final TextStyle linkTextStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Colors.green,
  height: kNormalTextHeight,
);

final TextStyle normalItalic = TextStyle(
  fontFamily: kFproximaNova,
  color: Colors.black.withOpacity(.55),
  height: kNormalTextHeight,
  fontStyle: FontStyle.italic,
);
