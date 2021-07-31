import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/dash_green_line.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';

class P3ApproachLeveled extends StatelessWidget {
  final BoxConstraints constraints;

  P3ApproachLeveled({
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
                "A distinct combination of balance + wit",
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
                " The branding entails of custom, yet controlled, geometric line work to highlight Leveled's commitment to personalization + professionalism. Energetic gold + baby blue colors compliment the serious navy blue + beige tones resulting in a perfect balance of trustworthy wit. Typography is direct and straightforward: an inviting, simplistic san-serif sits in tandem with a transitional serif to communicate the directness, spunk, and sophistication of the female-run brand.",
                textAlign: TextAlign.center,
                style: MyTextStyles().normalS16_W500_LH22_C737373,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
