import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';

final Map<String, dynamic> loppetWinterFestivalRowItems = {
  "DATE": Text(
    "Winter 2017",
    style: AppTextStyles.normal,
  ),
  "ROLE": Text(
    "Designer / Illustrator",
    style: AppTextStyles.normal,
  ),
  "AGENCY": RichText(
    text: TextSpan(
      // style: MyTextStyles().normatText.copyWith(
      //       fontWeight: FontWeight.w500,
      //     ),
      children: [
        TextSpan(
          text: "Duffy Design ",
          style: AppTextStyles.normal.copyWith(
            fontWeight: FontWeight.w500,
            color: kColorDash,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/",
                ),
        ),
        TextSpan(
          text: "Minneapolis, MN",
          style: AppTextStyles.normal,
        ),
      ],
    ),
  ),
  "DELIVERABLES": RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
      ),
      children: [
        TextSpan(
          text:
              "Screen printed posters, Event branding (2017), Custom typography, Illustration + iconography (used throughout marketing collateral)",
        )
      ],
    ),
  ),
};
