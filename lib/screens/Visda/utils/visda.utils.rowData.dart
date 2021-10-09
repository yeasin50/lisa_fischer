import 'package:flutter/material.dart';

import '../../../../../configs/configs.dart';

Map<String, Widget> visdaRowItems = {
  'DATE': Text(
    "Sept - Nov 2019",
    style: MyTextStyles().normatText,
  ),
  "ROLE": Text(
    "Brand Designer",
    style: MyTextStyles().normatText,
  ),
  "TEAM": RichText(
    text: TextSpan(
      style: MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w600,
            height: 1.4,
          ),
      children: [
        TextSpan(
          text: "Creative Direction _",
          children: [
            TextSpan(
              text: " Brad Aldridge\n",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
        TextSpan(
          text: "Illustration  _",
          children: [
            TextSpan(
              text: " Kyle Hoyt\n",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
        TextSpan(
          text: "Motion Design  _",
          children: [
            TextSpan(
              text: " Eric Henry",
              style: MyTextStyles().normatText,
            ),
          ],
        ),
      ],
    ),
  ),
  'DELIVERABLES': RichText(
    text: TextSpan(
      style: MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w500,
          ),
      children: [
        TextSpan(
          text:
              "Brand Identity, Website, Wayfinding, Summit Collateral, Deck Template, Environmental Graphics",
        )
      ],
    ),
  ),
};
