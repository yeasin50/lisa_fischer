import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/awards.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...[
          Text(
            "Lucere",
            style: AppTextStyles.header,
            textAlign: TextAlign.center,
          ),
          SubtitleCategoryOfWork(
            rolls: ["BRANDING", "UI+UX", "PACKAGING"],
          ),
          Text(
            "A takeaway salad and sandwich shop that provides a worry-free and wholesome experience for customers with food allergies or dietary needs.",
            style: AppTextStyles.sub26,
            textAlign: TextAlign.center,
          ),

          // generate extra padding
          const SizedBox(),

          ...awardsOnLucere.toList().map((e) => e).toList(),

          CustomButton(
            size: Size(230, 45),
            onTap: () async {
              final url =
                  "http://www.lisasuefischer.com/s/Process_Lucere_LisaFischer.pdf";
              await canLaunch(url) ? launch(url) : print("failed to launch");
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
        )
      ],
    );
  }
}
