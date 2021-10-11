import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class Intro extends StatelessWidget {
  Intro({Key? key}) : super(key: key);

  get itemSpace => 12;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Thrive",
          style: AppTextStyles.header,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace,
        ),
        SubtitleCategoryOfWork(
          rolls: ["BRANDING", "UI+UX", "ENVIRONMENTAL GRAPHICS"],
        ),
        SizedBox(
          height: itemSpace,
        ),
        Text(
          "A city park designed for the City of Charlotte, North Carolina with the triple bottom line (people + profit + planet) in mind.",
          style: AppTextStyles.sub26,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: itemSpace * 1.5,
        ),
        ...awardsOnThrive
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
                    "http://www.lisasuefischer.com/s/Process-Book_Thrive_LisaFischer.pdf")
                ? launch(
                    "http://www.lisasuefischer.com/s/Process-Book_Thrive_LisaFischer.pdf")
                : print("failed to launch");
          },
          label: "VIEW PROCESS WORK",
        ),
      ],
    );
  }
}
