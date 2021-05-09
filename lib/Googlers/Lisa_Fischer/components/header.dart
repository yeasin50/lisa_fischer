import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/page_nav.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/lisa_about.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Contact/contact.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/work_main.dart';

class LSHeader {
  Image buildLogo({
    double width = 44,
  }) {
    final String _personal_monogram =
        "assets/images/lisa_personal_monogram.png";
    return Image.asset(
      _personal_monogram,
      scale: 1,
      fit: BoxFit.fitHeight,
      width: width,
      height: width * 1.5,
    );
  }

  Row navigators(BuildContext context) {
    return Row(
      children: [
        PageNavigator(
            title: "WORK",
            isActive: true,
            onClick: () => Navigator.of(context)
                .pushReplacementNamed(LisaFischerWorkMain.routename)),
        PageNavigator(
            isActive: false,
            title: "ABOUT",
            onClick: () => Navigator.of(context)
                .pushReplacementNamed(LisaAboutPage.routeName)),
        PageNavigator(
            isActive: false,
            title: "CONTACT",
            onClick: () => Navigator.of(context)
                .pushReplacementNamed(LisaContactPage.routeName)),
      ],
    );
  }
}
