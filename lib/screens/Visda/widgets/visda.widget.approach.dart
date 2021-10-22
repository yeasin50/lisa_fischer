import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import 'package:portfolio/screens/Visda/utils/utils.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

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
          height: 30,
        ),
        Text(
          "The branding tells the story of the forever-evolving design process of Google’s Visual Designers by taking inspiration from blind contour drawing. The loosely energetic, yet confidentiality controlled, line work throughout the brand elements mirrors the chaotic expertise of Visual Designers at work.",
          textAlign: TextAlign.center,
          style: AppTextStyles.smallHeader13,
        ),
        AspectRatio(
          aspectRatio: 500 / ((maxWidth * 281) / 500),
          child: BlurHash(
            hash: visdaEventLoopGif.hash,
            image: visdaEventLoopGif.imageUrl,
          ),
        )
      ],
    );
  }
}
