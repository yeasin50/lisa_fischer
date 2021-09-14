import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:portfolio/configs/config.maxWidthContainer.dart';
import 'package:portfolio/configs/config.responsive.dart';

import 'lisa.about.body.dart';
///** TODO: break eveything and apply newWay>Wrapper Nav2 +.......
class LisaAboutPage extends StatelessWidget {
  static final String routeName = "/about";
  @override
  Widget build(BuildContext context) {
    print("rebuild Page");
    return Scaffold(
      body: SafeArea(
        child: Responsive(
          mobile: LSAboutPageBody(),
          tablet: AboutDesktop(),
          desktop: AboutDesktop(),
        ),
      ),
    );
  }
}

class AboutDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: kTopBodyStackChildAlignment,
          child: MaxWidthContainer(
            child: LSAboutPageBody(),
          ),
        ),
        Align(
          alignment: kTopBodyStackChildAlignment,
          child: Container(
            width: kTabletMaxWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LSHeader().buildLogo(width: 44),
                  LSHeader().navigators(context),
                ],
              ),
            ),
          ),
        ),
        if (Responsive.isDesktop(context))
          Align(
            alignment: Alignment(0, 1),
            child: footerRow(),
          ),
      ],
    );
  }
}
