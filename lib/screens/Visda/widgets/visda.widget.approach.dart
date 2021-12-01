import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../extensions/extensions.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P3ApproachVisD extends StatelessWidget {
  final double maxWidth;

  P3ApproachVisD({
    Key? key,
    required this.maxWidth,
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
          height: columnSpace.height! * 1.5,
        ),
        Text(
          "The branding tells the story of the forever-evolving design process of Google’s Visual Designers by taking inspiration from blind contour drawing. The loosely energetic, yet confidentiality controlled, line work throughout the brand elements mirrors the chaotic expertise of Visual Designers at work.",
          textAlign: TextAlign.center,
          style: AppTextStyles.normal.copyWith(
            fontSize: 20.fs,
          ),
        ),
        columnSpace,
        mwBHImage(
          hash: visdaEventLoopGif.hash,
          imageUrl: visdaEventLoopGif.imageUrl,
          aspectR: 192 / 108,
          width: maxWidth,
        ),
        columnSpace,
      ],
    );
  }
}
