import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth - 8 * 2;
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: maxWidth * .9,
              child: P1VisdIntro(),
            ),
            P2VisdaRow(
              maxWidth: maxWidth,
              isMobile: true,
            ),
            P3ApproachVisD(),
            P4SummitVisD(
              maxWidth: maxWidth,
              isMobile: true,
            ),
            P5WayFinding(
              maxWidth: maxWidth,
              isMobile: true,
            )
          ],
        ),
      );
    });
  }
}
