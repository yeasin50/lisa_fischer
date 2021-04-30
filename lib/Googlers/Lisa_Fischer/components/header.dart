
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/page_nav.dart';

class LSHeader extends StatelessWidget {
  const LSHeader({
    Key? key,
  }) : super(key: key);

  
  Padding buildLogo() {
    final String _personal_monogram =
        "assets/images/lisa_personal_monogram.png";
    return Padding(
      padding: EdgeInsets.all(10),
      child: Image.asset(
        _personal_monogram,
        scale: 1,
        fit: BoxFit.cover,
        width: 43,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildLogo(),
        Row(
          mainAxisSize: MainAxisSize.min,
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
        ),
      ],
    );
  }
}
