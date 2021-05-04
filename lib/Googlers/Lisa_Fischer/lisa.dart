import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';
import 'package:portfolio/config/breakpoints.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';
import 'components/header.dart';
import 'pages/About/about.dart';
import 'pages/Work/work.dart';

///`HomePage`
class LisaFischer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          desktop: WorkDesktopTablet(),
          tablet: WorkDesktopTablet(),
          mobile: LFWork(
            griditemC: 1,
          ),
        ),
      ),
    );
  }
}

class WorkDesktopTablet extends StatelessWidget {
  const WorkDesktopTablet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment(0, 0),
          child: MaxWidthContainer(
            child: LFWork(
              griditemC: Responsive.isDesktop(context) ? 3 : 2,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -1),
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
