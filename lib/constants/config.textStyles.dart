import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../configs/configs.dart';
import 'constants.dart';

///TODO:: need to check the styles in finish level including Colors
class AppTextStyles {
  static get title => TextStyle(
        fontFamily: kFproximaNova,
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 80,
      );

  static get header => GoogleFonts.lato(
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 68,
      );

  static get subHeader => GoogleFonts.lato(
        fontSize: 16,
        color: greyColor,
      );

  // static TextStyle get normal => TextStyle(
  //       fontFamily: kFproximaNova,
  //       color: Colors.black,
  //       height: kNormalTextHeight,
  //     );

  static TextStyle get normal => GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: greyColor,
        height: kNormalTextHeight,
      );

  ///shop from thousands of stores
  static TextStyle get sub26 => GoogleFonts.lato(
        fontSize: 26,
        color: greyColor,
      );

  static TextStyle get textParan20 => GoogleFonts.lato(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
      );

  static TextStyle get textInParan13 => GoogleFonts.lato(
        fontSize: 13,
        color: greyColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.6,
      );

  static TextStyle get subtitle12 => GoogleFonts.lato(
        fontSize: 12.5,
        color: greyColor,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.2,
      );

  static TextStyle get linkTextStyle => GoogleFonts.lato(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: linkTextColor,
        height: kNormalTextHeight,
      );

  static TextStyle get hintTextStyle => GoogleFonts.lato(
        fontSize: 14,
        color: const Color.fromRGBO(18, 18, 18, .56),
      );

  static TextStyle get subHeaderRow => TextStyle(
        fontFamily: kFproximaNova,
        letterSpacing: 1.3,
        height: 1.1,
        fontSize: 14.5,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      );

  /// small header grey
  static TextStyle get smallHeader13 => GoogleFonts.lato(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: greyColor,
        letterSpacing: 1.5,
      );
}
