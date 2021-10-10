import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .75;

        return SizedBox(
          width: maxWidth,
          child: Column(
            children: [
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: SizedBox(
              //     width: maxWidth * .65,
              //     child: P1Intro(),
              //   ),
              // ),
              // P2ImageAndRow(
              //   maxWidth: maxWidth,
              // ),

              // SizedBox(
              //   width: maxWidth * .65,
              //   child: P3Approch(
              //     maxWidth: maxWidth * .65,
              //   ),
              // ),
              // P4Postars(
              //   maxWidth: maxWidth,
              // ),
              P5RaceDay(
                maxWidth: maxWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}
