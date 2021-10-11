import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .85;

        final _itemWidth = constraints.maxWidth * .85 / 3 - columnSpace.height!;
        return Column(
          children: [
            SizedBox(
              width: maxWidth,
              child: Column(
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

                  SizedBox(
                    height: columnSpace.height! * 3,
                  ),

                  divider,

                  SizedBox(
                    height: columnSpace.height! * 3,
                  ),

                  ///*  details
                  SizedBox(
                    width: maxWidth,
                    child: Wrap(
                      spacing: columnSpace.height!,
                      runSpacing: columnSpace.height! * 2,
                      children: [
                        /// may need to organize more about child placement based on priority
                        ...[
                          ///FIXME: Edu text height change on scroll: hint=> just because of `runSpacing`
                          LisaEducation(),
                          LisaExperience(),
                          LisaDesignSkills(),

                          LisaPress(),
                          LisaWriting(),
                          LisaTechnicalSkills(),

                          LisaAwards(),
                          LisaFeture(),
                        ].map(
                          (item) => SizedBox(
                            width: _itemWidth,
                            child: item,
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: columnSpace.height! * 3,
                  ),

                  divider,

                  SizedBox(
                    height: columnSpace.height! * 3,
                  ),

                  Row(
                    key: ValueKey("Contact Row Tablet"),
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConnectOnAbout(),
                      ContactOnAbout(),

                      //* Im invisible and controlling the UI 🙃
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
              ),
            ),
            SizedBox(
              height: columnSpace.height! * 3,
            ),
            footerRow(),
          ],
        );
      },
    );
  }
}
