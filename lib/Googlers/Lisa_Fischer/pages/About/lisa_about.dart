import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/main_footer.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';

import 'body.dart';

class LisaAboutPage extends StatelessWidget {
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
          alignment: Alignment(0, 0),
          child: MaxWidthContainer(
            child: LSAboutPageBody(),
          ),
        ),
        Align(
          alignment: Alignment(0, -.9),
          child: Container(
            width: kTabletMaxWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LSHeader().buildLogo(width: 44),
                  LSHeader().navigators(),
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
