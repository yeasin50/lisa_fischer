import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/config.constants.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...[
          Text(
            "Thrive",
            style: AppTextStyles.header,
            textAlign: TextAlign.center,
          ),
          SubtitleCategoryOfWork(
            rolls: const [
              "BRANDING",
              "UI+UX",
              "ENVIRONMENTAL GRAPHICS",
            ],
          ),
          Text(
            "A city park designed for the City of Charlotte, North Carolina with the triple bottom line (people + profit + planet) in mind.",
            style: AppTextStyles.sub26,
            textAlign: TextAlign.center,
          ),

          // generate extra padding
          const SizedBox(),

          ...awardsOnThrive.toList().map((e) => e).toList(),

          CustomButton(
            size: const Size(230, 45),
            onTap: () async {
              await canLaunch(
                      "http://www.lisasuefischer.com/s/Process-Book_Thrive_LisaFischer.pdf")
                  ? launch(
                      "http://www.lisasuefischer.com/s/Process-Book_Thrive_LisaFischer.pdf")
                  : print("failed to launch");
            },
            label: "VIEW PROCESS WORK",
          ),
        ].map(
          (w) => Padding(
            padding: EdgeInsets.only(
              bottom: columnSpace.height!,
            ),
            child: w,
          ),
        ),
      ],
    );
  }
}
