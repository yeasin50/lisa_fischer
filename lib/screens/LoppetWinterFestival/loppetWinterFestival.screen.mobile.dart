import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth - 8 * 2;

        return Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              P1Intro(),

              P2ImageAndRow(
                maxWidth: maxWidth,
                isMobile: true,
              ),
              P3Approch(
                maxWidth: maxWidth,
              ),
              P4Postars(
                maxWidth: maxWidth,
                isMobile: true,
              ),
              P5RaceDay(
                maxWidth: maxWidth,
                isMobile: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
