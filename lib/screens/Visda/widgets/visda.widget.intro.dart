import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

class P1VisdIntro extends StatelessWidget {
  const P1VisdIntro({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "VisD@",
          style: AppTextStyles.title,
        ),
        SubtitleCategoryOfWork(
          rolls: ['BRANDING', 'VISUAL DESIGN'],
        ),
        // TitleWithSub(
        //   title: "VisD@",
        //   rolls: ['BRANDING', 'VISUAL DESIGN'],
        // ),
        columnSpace,
        Text(
          "Google’s 1st Visual Design Summit",
          style: AppTextStyles.textParan20,
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          "In Fall 2019, Google held its first-ever Visual Design Summit, a day-long event for Google’s Visual Designers to come together as one creative community. I had the pleasure of designing the brand identity from ideation to execution.",
          style: AppTextStyles.normal,
        ),
        columnSpace,
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "* ",
                style: AppTextStyles.normal.copyWith(
                  color: kColorDash,
                ),
              ),
              TextSpan(
                text: "VisD@ = Visual Designers at Google",
                style: AppTextStyles.normal.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
