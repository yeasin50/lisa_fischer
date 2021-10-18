import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../configs/config.constants.dart';
import '../../constants/constants.dart';
import '../../providers/provider.navigator.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeftAndRight,
        right: paddingLeftAndRight,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...[
            ProfileImage(),
            BriefInfo(),
            divider,
            ...[
              /// may text height is coming from mapping
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
                  bottom: columnSpace.height!,
                ),
                child: e,
              ),
            ),
            divider,
            ConnectOnAbout(),
            ContactOnAbout(),
            Transform.translate(
              offset: Offset(-8, 0), //todo: separate Paddings form widgets
              child: CustomButton(
                label: "GET IN TOUCH",
                onTap: () {
                  print("GET IN TOUCH: tapped");
                  LSHeader.currentActiveIndex = 2;
                  Provider.of<PageNotifier>(
                    context,
                    listen: false,
                  ).changeScreen(pageName: PageName.contact);
                },
              ),
            ),
          ].map(
            (e) => Padding(
              padding: EdgeInsets.only(
                bottom: columnSpace.height!,
              ),
              child: e,
            ),
          ),
        ],
      ),
    );
  }
}
