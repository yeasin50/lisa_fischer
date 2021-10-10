import 'package:flutter/material.dart';

import '../../../../../configs/configs.dart';

Map<String, Widget> visdaRowItems = {
  'DATE': Text(
    "Sept - Nov 2019",
    style: AppTextStyles.normal,
  ),
  "ROLE": Text(
    "Brand Designer",
    style: AppTextStyles.normal,
  ),
  "TEAM": RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w600,
        height: 1.4,
      ),
      children: [
        TextSpan(
          text: "Creative Direction _",
          children: [
            TextSpan(
              text: " Brad Aldridge\n",
              style: AppTextStyles.normal,
            ),
          ],
        ),
        TextSpan(
          text: "Illustration  _",
          children: [
            TextSpan(
              text: " Kyle Hoyt\n",
              style: AppTextStyles.normal,
            ),
          ],
        ),
        TextSpan(
          text: "Motion Design  _",
          children: [
            TextSpan(
              text: " Eric Henry",
              style: AppTextStyles.normal,
            ),
          ],
        ),
      ],
    ),
  ),
  'DELIVERABLES': RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
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
