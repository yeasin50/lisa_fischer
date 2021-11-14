import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../extensions/extensions.dart';
import '../../../widgets/widgets.dart';

const String _approachText =
    " The branding entails of custom, yet controlled, geometric line work to highlight Leveled's commitment to personalization + professionalism. Energetic gold + baby blue colors compliment the serious navy blue + beige tones resulting in a perfect balance of trustworthy wit. Typography is direct and straightforward: an inviting, simplistic san-serif sits in tandem with a transitional serif to communicate the directness, spunk, and sophistication of the female-run brand.";

class P3ApproachLeveled extends StatelessWidget {
  P3ApproachLeveled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        columnSpace,
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
        SizedBox(height: columnSpace.height! * 1.5),
        Text(
          _approachText,
          textAlign: TextAlign.center,
          style: AppTextStyles.normal.copyWith(
            fontSize: 22.fs,
          ),
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        )
      ],
    );
  }
}
