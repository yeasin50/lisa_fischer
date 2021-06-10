import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/config/constants.dart';

/// TODO:: Still facing font issue=> download font somewhere else or alt use google FOnt
final TextStyle titleTextStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Color.fromRGBO(5, 173, 134, .21),
  fontWeight: FontWeight.w900,
  fontSize: 80,
);

// TextStyle(
//               fontSize: 21,
//               fontWeight: FontWeight.w700,
//               height: kNormalTextHeight,
//               letterSpacing: .27,
//             )

final TextStyle subTitleTextStyle = TextStyle(
  fontFamily: kFproximaNova,
  color: Color.fromRGBO(157, 158, 158, 1),
  fontWeight: FontWeight.bold,
  fontSize: 13,
  letterSpacing: 1.5,
);

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

///TODO:: need to check the styles in finish level including Colors
class MyTextStyles {
  final TextStyle subHeader = GoogleFonts.lato(
    fontSize: 16,
    color: const Color(0xff737373),
  );

  ///shop from thousands of stores
  final TextStyle sub26 = GoogleFonts.lato(
    fontSize: 26,
    color: const Color(0xff737373),
  );

  final TextStyle textParan20 = GoogleFonts.lato(
    fontSize: 20,
    color: Colors.black87,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
  );

  final TextStyle subtitle12 = GoogleFonts.lato(
    fontSize: 12.5,
    color: Colors.grey,
    fontWeight: FontWeight.w800,
    letterSpacing: 1.2,
  );

  final TextStyle normatText = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: const Color(0xff737373),
  );

  final TextStyle textInParan = GoogleFonts.lato(
    fontSize: 13,
    color: const Color(0xff9d9e9e),
    fontWeight: FontWeight.w600,
    letterSpacing: 1.6,
  );

  /// small header grey
  final TextStyle smallHeader13pxW610 = GoogleFonts.lato(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: const Color(0xff9d9e9e),
    letterSpacing: 1.5,
  );
}
