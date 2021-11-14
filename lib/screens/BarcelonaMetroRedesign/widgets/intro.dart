import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/config.constants.dart';
import '../../../constants/const.textStyles.dart';
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
            "Barcelona Metro Redesign",
            style: AppTextStyles.header,
            textAlign: TextAlign.center,
          ),
          SubtitleCategoryOfWork(
            rolls: ["INFORMATION DESIGN", "UI+UX", "Branding"],
          ),
          Text(
            "A redesign that makes the metro clearer, friendlier, and true to Barcelona culture.",
            style: AppTextStyles.sub26,
            textAlign: TextAlign.center,
          ),

          // 🧝‍♀️, it will render extra padding 🥱
          const SizedBox(),

          ...awards
              .toList()
              .map(
                (e) => e,
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
