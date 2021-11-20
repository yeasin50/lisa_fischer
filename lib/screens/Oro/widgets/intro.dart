import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/config.constants.dart';
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
            "Oro",
            style: AppTextStyles.header,
            textAlign: TextAlign.center,
          ),
          SubtitleCategoryOfWork(
            rolls: ["BRANDING", "DIGITAL", "ENVIRONMENTAL GRAPHICS"],
          ),
          Text(
            "A contemporary airline based out of Seville, Spain.",
            style: AppTextStyles.sub26.copyWith(
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),

          // magicBox for extra padding
          const SizedBox(),

          ...awardsOnOro.toList().map((e) => e).toList(),

          CustomButton(
            size: Size(230, 45),
            onTap: () async {
              await canLaunch(
                      "http://www.lisasuefischer.com/s/Process_Oro_LisaFischer.pdf")
                  ? launch(
                      "http://www.lisasuefischer.com/s/Process_Oro_LisaFischer.pdf")
                  : print("failed to launch");
            },
            label: "VIEW PROCESS WORK",
          ),
        ].map(
          (e) => Padding(
            padding: EdgeInsets.only(
              bottom: columnSpace.height!,
            ),
            child: e,
          ),
        ),
      ],
    );
  }
}
