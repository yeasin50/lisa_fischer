import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';

import '../../constants/constants.dart';
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
          GetInTouchBrief(),
          spaceBetweenColumnOnMobile,
          ContactGif(),
          spaceBetweenColumnOnMobile,
          ContactForm(), //TODO: controll when text scroll at end
          spaceBetweenColumnOnMobile,
          divider,
          spaceBetweenColumnOnMobile,
          ConnectOnAbout(),
          ContactOnAbout(),
          Transform.translate(
            offset: Offset(-8, 0), // will move on sepration widgets padding
            child: CustomButton(
              label: "GET IN TOUCH",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
