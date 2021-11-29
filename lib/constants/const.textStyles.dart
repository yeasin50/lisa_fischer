import 'package:flutter/material.dart';

import '../configs/configs.dart';
import '../extensions/extensions.dart';
import 'constants.dart';

///TODO:: need to check the styles in finish level including Colors
///TODO: using TextTheme will be[Thinking] better means bodyText1,subtitleText1,.........
class AppTextStyles {
  ///views[Mobile,tablet,Desktop] based FontSize

  static const String fontFamily = 'Lato';
  static const String fontFamily2 = 'Estonia';
  

  static get title => TextStyle(
        fontFamily: fontFamily,
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 80.fs,
      );

  static get header => TextStyle(
        fontFamily: fontFamily,
        color: titleColor,
        fontWeight: FontWeight.w900,
        fontSize: 68.fs,
      );

  static get subHeader => TextStyle(
        fontFamily: fontFamily,
        fontSize: 16.fs,
        color: greyColor,
      );

  //* Connect on About
  static TextStyle get midBlod => TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 19.5.fs,
        color: Colors.black.withOpacity(.95),
      );

  //* fontWeight Issue on copyWith check this: https://stackoverflow.com/q/69698916/10157127
  // Got an solution by using asset instead of api
  //* used on [LockStatus]=> lib\screens\GoogleShopping\widgets\header.dart
  static TextStyle get textShadow => TextStyle(
        fontFamily: fontFamily,
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

  static TextStyle get textShadowWithUnderline => TextStyle(
        fontFamily: fontFamily,
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

  static TextStyle get normal => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.fs,
        fontWeight: FontWeight.w500,
        color: greyColor,
        height: kNormalTextHeight,
      );

  ///shop from thousands of stores
  static TextStyle get sub26 => TextStyle(
        fontFamily: fontFamily,
        fontSize: 26.fs,
        color: greyColor,
      );

  static TextStyle get textParan20 => TextStyle(
        fontFamily: fontFamily,
        fontSize: 20.fs,
        color: Colors.black87,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.2,
      );

  static TextStyle get textInParan13 => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13.fs,
        color: greyColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.6,
      );

  static TextStyle get subtitle12 => TextStyle(
        fontFamily: fontFamily,
        fontSize: 12.5.fs,
        color: greyColor,
        fontWeight: FontWeight.w800,
        letterSpacing: 1.2,
      );

  static TextStyle get linkTextStyle => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.fs,
        fontWeight: FontWeight.w500,
        color: linkTextColor,
        height: kNormalTextHeight,
      );

  static TextStyle get hintTextStyle => TextStyle(
        fontFamily: fontFamily,
        fontSize: 14.fs,
        color: const Color.fromRGBO(18, 18, 18, .56),
      );

  static TextStyle get subHeaderRow => TextStyle(
        fontFamily: fontFamily,
        // letterSpacing: 1.3,
        height: 1.1,
        fontSize: 14.5.fs,
        fontWeight: FontWeight.w700,
        color: Colors.black87,
      );

  /// small header grey
  static TextStyle get smallHeader13 => TextStyle(
        fontFamily: fontFamily,
        fontSize: 13.fs,
        fontWeight: FontWeight.w600,
        color: greyColor,
        letterSpacing: 1.5,
      );

  static TextStyle get customButton => TextStyle(
        fontFamily: fontFamily,
        color: Colors.white,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.4,
      );
}
