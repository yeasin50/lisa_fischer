import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../configs/configs.dart';
import '../extensions/extensions.dart';
import 'constants.dart';

///TODO:: need to check the styles in finish level including Colors
class AppTextStyles {
  ///views[Mobile,tablet,Desktop] based FontSize

  static get title => GoogleFonts.lato(
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 80.fs,
      );

  static get header => GoogleFonts.lato(
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 68.fs,
      );

  static get subHeader => GoogleFonts.lato(
        fontSize: 16.fs,
        color: greyColor,
      );

  //* Connect on About
  static TextStyle get midBlod => GoogleFonts.lato(
        fontWeight: FontWeight.bold,
        fontSize: 19.5.fs,
        color: Colors.black.withOpacity(.95),
      );

  //* fontWeight Issue on copyWith check this: https://stackoverflow.com/q/69698916/10157127
  // Got an solution by using asset instead of api
  //* used on [LockStatus]=> lib\screens\GoogleShopping\widgets\header.dart
  static TextStyle get textShadow => GoogleFonts.lato(
        fontSize: 22.fs,
        shadows: normalShadow,
        color: Colors.transparent,
      );

  static List<Shadow> get hoverShadow => [
        Shadow(
          color: Colors.black, // change hover text color
          offset: Offset(0, -5),
        ),
      ];

  static List<Shadow> get normalShadow => [
        Shadow(
          color: Colors.black,
          offset: Offset(0, -5),
        ),
      ];

  static TextStyle get textShadowWithUnderline => GoogleFonts.lato(
        fontSize: 22.fs,
        fontWeight: FontWeight.bold,
        shadows: normalShadow,
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationColor: Colors.deepPurpleAccent,
        decorationThickness: .3,
      );

//*End of Hover 

  // static TextStyle get normal => TextStyle(
  //       fontFamily: kFproximaNova,
  //       color: Colors.black,
  //       height: kNormalTextHeight,
  //     );

  static TextStyle get normal => GoogleFonts.lato(
        fontSize: 14.fs,
        fontWeight: FontWeight.w500,
        color: greyColor,
        height: kNormalTextHeight,
      );

  ///shop from thousands of stores
  static TextStyle get sub26 => GoogleFonts.lato(
        fontSize: 26.fs,
        color: greyColor,
      );

  static TextStyle get textParan20 => GoogleFonts.lato(
        fontSize: 20.fs,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
      );

  static TextStyle get textInParan13 => GoogleFonts.lato(
        fontSize: 13.fs,
        color: greyColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.6,
      );

  static TextStyle get subtitle12 => GoogleFonts.lato(
        fontSize: 12.5.fs,
        color: greyColor,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.2,
      );

  static TextStyle get linkTextStyle => GoogleFonts.lato(
        fontSize: 14.fs,
        fontWeight: FontWeight.w500,
        color: linkTextColor,
        height: kNormalTextHeight,
      );

  static TextStyle get hintTextStyle => GoogleFonts.lato(
        fontSize: 14.fs,
        color: const Color.fromRGBO(18, 18, 18, .56),
      );

  static TextStyle get subHeaderRow => GoogleFonts.lato(
        letterSpacing: 1.3,
        height: 1.1,
        fontSize: 14.5.fs,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      );

  /// small header grey
  static TextStyle get smallHeader13 => GoogleFonts.lato(
        fontSize: 13.fs,
        fontWeight: FontWeight.w600,
        color: greyColor,
        letterSpacing: 1.5,
      );

  static TextStyle get customButton => GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.4,
      );
}
