import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .85;

        return SizedBox(
          width: maxWidth,
          child: Column(
            children: [
              Align(
                alignment: Alignment(-1, -1),
                child: SizedBox(
                  width: maxWidth * .5,
                  child: P1Intro(),
                ),
              ),
              P2ImageAndRow(
                maxWidth: maxWidth,
              ),
              SizedBox(
                width: maxWidth * .75,
                child: P3Approch(
                  maxWidth: maxWidth * .75,
                ),
              ),
              P4Postars(
                maxWidth: maxWidth,
              ),
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
