import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
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
          "Lucere",
          style: AppTextStyles.header,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace,
        ),
        SubtitleCategoryOfWork(
          rolls: ["BRANDING", "UI+UX", "PACKAGING"],
        ),
        SizedBox(
          height: itemSpace,
        ),
        Text(
          "A takeaway salad and sandwich shop that provides a worry-free and wholesome experience for customers with food allergies or dietary needs.",
          style: AppTextStyles.sub26,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace * 1.5,
        ),
        ...awardsOnLucere
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
            final url =
                "http://www.lisasuefischer.com/s/Process_Lucere_LisaFischer.pdf";
            await canLaunch(url) ? launch(url) : print("failed to launch");
          },
          label: "VIEW PROCESS WORK",
        ),
      ],
    );
  }
}
