import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';

Map<String, Widget> leveledRowItemsData = {
  'DATE': Text(
    "March 2017",
    style: MyTextStyles().normatText,
  ),
  "ROLE": Text(
    "Brand Designer",
    style: MyTextStyles().normatText,
  ),
  "AGENCY": RichText(
    text: TextSpan(
      style: MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.7,
          ),
      children: [
        TextSpan(
          children: [
            TextSpan(
              text: "Duffy Design\n",
              style: MyTextStyles().normatText,
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
              style: MyTextStyles().normatText,
            ),
          ],
        ),
      ],
    ),
  ),
  'TEAM': RichText(
    text: TextSpan(
      style: MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.7,
          ),
      children: [
        TextSpan(
          text: "Creative Direction _",
          children: [
            TextSpan(
              text: " Alan Leusink\n",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
        TextSpan(
          text: "Design Director  _",
          children: [
            TextSpan(
              text: " Joseph Duffy\n",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
        TextSpan(
          text: "UX Designer  _",
          children: [
            TextSpan(
              text: " Beccah Erickson",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
      ],
    ),
  ),
};
