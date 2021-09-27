import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/Oro/utils/awards.dart';

import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:url_launcher/url_launcher.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  get itemSpace => 6;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Oro",
          style: MyTextStyles().header,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12,
        ),
        SubtitleCategoryOfWork(
          rolls: ["BRANDING", "DIGITAL", "ENVIRONMENTAL GRAPHICS"],
        ),
        SizedBox(height: 12),
        Text(
          "A contemporary airline based out of Seville, Spain.",
          style: MyTextStyles().sub26,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
        ...awardsOnOro
            .toList()
            .map(
              (e) => Padding(
                padding: EdgeInsets.symmetric(vertical: itemSpace),
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
        )
      ],
    );
  }
}
