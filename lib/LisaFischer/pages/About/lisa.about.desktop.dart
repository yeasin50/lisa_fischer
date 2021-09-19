import 'package:flutter/material.dart';

import '../../constants/lisa.const.divider.dart';
import '../../widgets/widgets.dart';
import 'widgets/lisa.about.widget.briefInfo.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* Profile image and intro
        Row(
          children: [
            ProfileImage(),
            SizedBox(width: 20),
            Expanded(
              child: BriefInfo(),
            ),
          ],
        ),

        spaceBetweenColumnItemsOnDesktop,

        divider,

        spaceBetweenColumnItemsOnDesktop,

        ///*  details
        GridView.count(
          key: ValueKey("1st row of Qualification"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          childAspectRatio: 1.28,
          crossAxisSpacing: 8,
          mainAxisSpacing: 0,
          children: [
            LisaEducation(),
            LisaExperience(),
            LisaDesignSkills(),
            LisaTechnicalSkills(),
          ],
        ),
        GridView.count(
          key: ValueKey("2nd row of Qualification"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 8,
          mainAxisSpacing: 0,
          children: [
            LisaAwards(),
            LisaFeture(),
            LisaPress(),
            LisaWriting(),
          ],
        ),

        spaceBetweenColumnItemsOnDesktop,

        divider,

        spaceBetweenColumnItemsOnDesktop,

        GridView.count(
          key: ValueKey("Contact Row"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 8,
          childAspectRatio: 4 / 2,
          children: [
            ConnectOnAbout(),
            ContactOnAbout(),

            //* Im invisible and controlling the Grid :)
            SizedBox(),
            Align(
              alignment: Alignment.topRight,
              child: CustomButton(
                label: "GET IN TOUCH",
                onTap: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
