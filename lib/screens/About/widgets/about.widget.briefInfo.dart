import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

import '../../../configs/configs.dart';

class BriefInfo extends StatelessWidget {
  const BriefInfo({Key? key}) : super(key: key);
  String get texts1 =>
      "\nShe specializes in bridging the tenets of brand identity with UX/UI to create innovative and impactful design solutions for the modern age.";

  String get texts2 =>
      "Aside from design, Lisa plays piano, runs long distances, and consistently binges episodes of 30 Rock.";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lisa Fischer",
            textAlign: TextAlign.left,
            style: AppTextStyles.title,
          ),
          WavingWidget(
            //TODO: replace image to fix 1st render
            child: Text(
              "👋",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Text(
            "\nLisa is a designer focused on building brands and creating digital experiences — currently working at Google.",
            style: AppTextStyles.sub26,
          ),
          Text(
            texts1 + "\n\n" + texts2 + "\n",
            style: AppTextStyles.normal.copyWith(
              letterSpacing: .27,
            ),
          ),
          Text(
            "— Based in the San Francisco Bay area",
            style: AppTextStyles.normal,
          ),
        ],
      ),
    );
  }
}
