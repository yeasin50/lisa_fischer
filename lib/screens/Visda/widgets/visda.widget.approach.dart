import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class P3ApproachVisD extends StatelessWidget {
  P3ApproachVisD({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "APPROACH",
          style: AppTextStyles.smallHeader13,
        ),
        columnSpace,
        Text(
          "The Virtuous VisD Cycle",
          style: AppTextStyles.sub26.copyWith(
            color: Colors.black,
          ),
        ),
        columnSpace,
        greenColorLine,
        SizedBox(
          height: 30,
        ),
        Text(
          "The branding tells the story of the forever-evolving design process of Google’s Visual Designers by taking inspiration from blind contour drawing. The loosely energetic, yet confidentiality controlled, line work throughout the brand elements mirrors the chaotic expertise of Visual Designers at work.",
          textAlign: TextAlign.center,
          style: AppTextStyles.smallHeader13,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1583659074237-04672AU5JJTMZF8I749R/visd%40_Event+Loop.gif?format=500w",
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }
}
