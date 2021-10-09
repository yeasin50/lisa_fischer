import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

import '../../../configs/configs.dart';

class P1LeveledIntro extends StatelessWidget {
  const P1LeveledIntro({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Leveled",
          style: titleTextStyle,
        ),
        SizedBox(height: 10),
        SubtitleCategoryOfWork(
          rolls: ['BRANDING', 'DIGITAL'],
        ),
        columnSpace,
        Text(
          "Helping leaders and businesses make good on good intent.",
          style: MyTextStyles().textParan20,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Leveled is a Minneapolis-based consulting firm that helps leaders and businesses make good on good intent by coaching leaders and teams to have greater professional and personal impact. ",
          style: MyTextStyles().normatText,
        ),
        columnSpace,
        Text(
          "As a new business, Leveled sought out a brand identity to establish and differentiate the female-run firm in its communications, messaging and orchestrated events.",
          style: MyTextStyles().normatText,
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
