import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/page_nav.dart';

class LSHeader {
  Image buildLogo({double width = 44}) {
    final String _personal_monogram =
        "assets/images/lisa_personal_monogram.png";
    return Image.asset(
      _personal_monogram,
      scale: 1,
      fit: BoxFit.cover,
      width: width,
    );
  }

  Row navigators() {
    return Row(
      children: [
        PageNavigator(
            title: "WORK",
            isActive: true,
            onClick: () {
              print("Page Navigate to Work");
            }),
        PageNavigator(
            isActive: false,
            title: "ABOUT",
            onClick: () {
              print("Page Navigate to About");
            }),
        PageNavigator(
            isActive: false,
            title: "CONTACT",
            onClick: () {
              print("Page Navigate to contact");
            }),
      ],
    );
  }
}
