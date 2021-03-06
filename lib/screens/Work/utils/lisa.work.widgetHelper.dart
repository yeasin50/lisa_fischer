import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/const.textStyles.dart';

final String infoText =
    "Lisa Fischer is a designer focused on building brands and creating digital experiences — currently working at Google.";

Widget buildInfoText(double _fontS) {
  ////TODO: fix TextStyle
  TextStyle _infoTextStyle = TextStyle(
    fontFamily: AppTextStyles.fontFamily,
    fontSize: _fontS,
    fontWeight: FontWeight.w500,
  );

  return FittedBox(
    child: EasyRichText(
      infoText,
      textAlign: TextAlign.center,
      defaultStyle: _infoTextStyle,
    ),
  );
}
