import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/constants/constants.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/lisa.about.widget.briefInfo.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class TabletView extends StatelessWidget {
  final BoxConstraints constraints;
  const TabletView({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(constraints.maxWidth);
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //* Profile image and intro
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ProfileImage(),
            ),
            SizedBox(width: 20),
            Expanded(
              child: BriefInfo(),
            ),
          ],
        ),

        spaceBetweenColumnItemsOnTablet,

        divider,

        spaceBetweenColumnItemsOnTablet,

        ///*  details
        GridView.count(
          key: ValueKey("1st row of Qualification: Tablet"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 0,
          childAspectRatio: constraints.maxWidth /
              (kMobileMaxWidth * 1.2), //* little dirty trick 😅
          children: [
            LisaEducation(),
            LisaExperience(),
            LisaDesignSkills(),
          ],
        ),

        GridView.count(
          key: ValueKey("2st row of Qualification: Tablet"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 0,
          childAspectRatio: constraints.maxWidth /
              (kMobileMaxWidth * .9), //* little dirty trick 😅
          children: [
            LisaTechnicalSkills(),
            LisaWriting(),
            LisaPress(),
          ],
        ),
        GridView.count(
          key: ValueKey("3st row of Qualification: Tablet"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 0,

          childAspectRatio: constraints.maxWidth > 994.0
              ? 1.5
              : constraints.maxWidth /
                  (kMobileMaxWidth * 1.49), //* little dirty trick 😅
          children: [
            //TODO: make list
            LisaAwards(),
            LisaFeture(),
          ],
        ),

        spaceBetweenColumnItemsOnTablet,

        divider,

        spaceBetweenColumnItemsOnTablet,

        GridView.count(
          key: ValueKey("Contact Row Tablet"),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 8,
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
