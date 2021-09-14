import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

import 'lisa.contact.body.dart';

class LisaContactPage extends StatelessWidget {
  static final String routeName = "/contactpage";
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
                          AnimatedLogo(
                            animType: AnimationType.scaleX,
                          ),
                          LSHeader().navigators(context),
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
