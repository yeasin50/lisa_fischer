import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/constants/constants.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileImage(),
          BriefInfo(),
          spaceBetweenColumnOnMobile,
          divider,
          spaceBetweenColumnOnMobile,
          ...[
            LisaEducation(),
            LisaExperience(),
            LisaDesignSkills(),
            LisaTechnicalSkills(),
            LisaAwards(),
            LisaFeture(),
            LisaPress(),
            LisaWriting(),
          ].map(
            (e) => Padding(
              padding: EdgeInsets.only(
                bottom: spaceBetweenColumnItemsOnMobile,
              ),
              child: e,
            ),
          ),
          spaceBetweenColumnOnMobile,
          divider,
          spaceBetweenColumnOnMobile,
          ConnectOnAbout(),
          spaceBetweenColumnOnMobile,
          ContactOnAbout(),
          spaceBetweenColumnOnMobile,
          Transform.translate(
            offset: Offset(-8, 0), //todo: separate Paddings form widgets
            child: CustomButton(
              label: "GET IN TOUCH",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
