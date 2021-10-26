import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _maxWidth = constraints.maxWidth * maxDesktopViewPortion;
        double _introWidth = constraints.maxWidth * .5;
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: _introWidth,
              child: Intro(),
            ),
            SizedBox(
              width: _maxWidth,
              child: Column(
                children: [
                  WorkProcessUsingBlurHash(
                    maxWidth: constraints.maxWidth * maxDesktopViewPortion,
                  ),

                  ///* from assets
                  Tickets(),
                  MetroMobileApp(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
