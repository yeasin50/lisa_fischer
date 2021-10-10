import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';
import '../utils/awards.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  get itemSpace => 12;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Oro",
          style: AppTextStyles.header,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace,
        ),
        SubtitleCategoryOfWork(
          rolls: ["BRANDING", "DIGITAL", "ENVIRONMENTAL GRAPHICS"],
        ),
        SizedBox(
          height: itemSpace,
        ),
        Text(
          "A contemporary airline based out of Seville, Spain.",
          style: AppTextStyles.sub26,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace * 1.5,
        ),
        ...[
          ...awardsOnOro
              .toList()
              .map(
                (e) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: e,
                ),
              )
              .toList(),
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
        ]
      ],
    );
  }
}
