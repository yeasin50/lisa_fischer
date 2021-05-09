import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';
import 'package:portfolio/config/constants.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';

import 'body.dart';

class LisaContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: ContactBodyMobile(),
          tablet: DesktopTabletMode(),
          desktop: DesktopTabletMode(),
        ),
      ),
    );
  }
}

class DesktopTabletMode extends StatelessWidget {
  const DesktopTabletMode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MaxWidthContainer(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ContactBodyDesktop(),
                  ),
                  Align(
                    alignment: kTopBodyStackChildAlignment,
                    child: Container(
                      width: kTabletMaxWidth,
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
                ],
              ),
            ),
          ),
        ),
        if (Responsive.isDesktop(context))
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              color: Colors.white,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FooterText(),
                  SocialIcons(),
                ],
              ),
            ),
          )
      ],
    );
  }
}
