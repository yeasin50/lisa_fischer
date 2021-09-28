import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/BarcelonaMetroRedesign/utils/awards.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/config.textStyles.dart';
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
          "Barcelona Metro Redesign",
          style: MyTextStyles().header,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12,
        ),
        SubtitleCategoryOfWork(
          rolls: ["INFORMATION DESIGN", "UI+UX", "Branding"],
        ),
        SizedBox(height: 12),
        Text(
          "A redesign that makes the metro clearer, friendlier, and true to Barcelona culture.",
          style: MyTextStyles().sub26,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 12),
        ...awards
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
                    "http://www.lisasuefischer.com/s/Process_BarcelonaMetroRedesign_LisaFischer.pdf")
                ? launch(
                    "http://www.lisasuefischer.com/s/Process_BarcelonaMetroRedesign_LisaFischer.pdf")
                : print("failed to launch");
          },
          label: "VIEW PROCESS WORK",
        )
      ],
    );
  }
}
