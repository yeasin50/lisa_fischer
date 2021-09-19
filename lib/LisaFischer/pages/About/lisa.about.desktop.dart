import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/constants/lisa.const.divider.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

import 'utils/lisa.about.utils.var.dart';

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
            Expanded(child: briefInfo()),
          ],
        ),

        spaceBetweenColumnItems,

        divider,

        spaceBetweenColumnItems,

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

        spaceBetweenColumnItems,

        divider,

        spaceBetweenColumnItems,

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

  Padding briefInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lisa Fischer",
            textAlign: TextAlign.left,
            style: titleTextStyle,
          ),
          WavingWidget(
            child: Text(
              "👋",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Text(
            "\nLisa is a designer focused on building brands and creating digital experiences — currently working at Google.",
            style: subHeaderTextStyle,
          ),
          Text(
            texts1 + "\n\n" + texts2 + "\n",
            style: normalStyle.copyWith(
              letterSpacing: .27,
            ),
          ),
          Text(
            "— Based in the San Francisco Bay area",
            style: normalStyle,
          ),
        ],
      ),
    );
  }
}
