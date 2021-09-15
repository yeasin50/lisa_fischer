import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class P3ApproachVisD extends StatelessWidget {
  final BoxConstraints constraints;

  P3ApproachVisD({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: constraints.maxWidth * .5,
          ),
          child: Column(
            children: [
              Text(
                "APPROACH",
                style: MyTextStyles().smallHeader13pxW610,
              ),
              columnSpace,
              Text(
                "The Virtuous VisD Cycle",
                style: MyTextStyles().sub26.copyWith(
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
                style: MyTextStyles().normalS16_W500_LH22_C737373,
              ),
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1583659074237-04672AU5JJTMZF8I749R/visd%40_Event+Loop.gif?format=500w",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
