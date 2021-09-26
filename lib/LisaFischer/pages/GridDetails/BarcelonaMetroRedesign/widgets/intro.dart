import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/BarcelonaMetroRedesign/utils/awards.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/config.textStyles.dart';
import 'package:portfolio/configs/configs.dart';

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
          onTap: () {},
          label: "VIEW PROCESS WORK",
        )
      ],
    );
  }
}
