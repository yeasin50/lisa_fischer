import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';

Map<String, Widget> leveledRowItemsData = {
  'DATE': Text(
    "March 2017",
    style: AppTextStyles.normal,
  ),
  "ROLE": Text(
    "Brand Designer",
    style: AppTextStyles.normal,
  ),
  "AGENCY": RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w600,
        height: 1.7,
      ),
      children: [
        TextSpan(
          children: [
            TextSpan(
              text: "Duffy Design\n",
              style: AppTextStyles.normal,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launch("https://duffy.com/");
                },
            ),
          ],
        ),
        TextSpan(
          text: "Minneapolis, MN",
          children: [
            TextSpan(
              text: " Kyle Hoyt",
              style: AppTextStyles.normal,
            ),
          ],
        ),
      ],
    ),
  ),
  'TEAM': RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w600,
        height: 1.7,
      ),
      children: [
        TextSpan(
          text: "Creative Direction _",
          children: [
            TextSpan(
              text: " Alan Leusink\n",
              style: AppTextStyles.normal,
            ),
          ],
        ),
        TextSpan(
          text: "Design Director  _",
          children: [
            TextSpan(
              text: " Joseph Duffy\n",
              style: AppTextStyles.normal,
            ),
          ],
        ),
        TextSpan(
          text: "UX Designer  _",
          children: [
            TextSpan(
              text: " Beccah Erickson",
              style: AppTextStyles.normal,
            ),
          ],
        ),
      ],
    ),
  ),
};
