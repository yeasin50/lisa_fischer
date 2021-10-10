import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

class P3ApproachLeveled extends StatelessWidget {
  P3ApproachLeveled({
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
          "A distinct combination of balance + wit",
          textAlign: TextAlign.center,
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
          " The branding entails of custom, yet controlled, geometric line work to highlight Leveled's commitment to personalization + professionalism. Energetic gold + baby blue colors compliment the serious navy blue + beige tones resulting in a perfect balance of trustworthy wit. Typography is direct and straightforward: an inviting, simplistic san-serif sits in tandem with a transitional serif to communicate the directness, spunk, and sophistication of the female-run brand.",
          textAlign: TextAlign.center,
          style: AppTextStyles.smallHeader13,
        ),
      ],
    );
  }
}
