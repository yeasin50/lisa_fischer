import 'package:flutter/material.dart';
import '../../configs/configs.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth * .75;
      return SizedBox(
        width: maxWidth,
        child: Column(
          children: [
            Align(
              alignment: Alignment(-1, -1),
              child: SizedBox(
                width: constraints.maxWidth * .4,
                child: P1VisdIntro(),
              ),
            ),
            P2VisdaRow(
              maxWidth: maxWidth,
            ),
            SizedBox(
              height: columnSpace.height! * 3,
            ),
            SizedBox(
              width: maxWidth * .65,
              child: P3ApproachVisD(),
            ),
            P4SummitVisD(
              maxWidth: maxWidth,
            ),
            SizedBox(
              height: columnSpace.height! * 3,
            ),
            P5WayFinding(maxWidth: maxWidth)
          ],
        ),
      );
    });
  }
}
