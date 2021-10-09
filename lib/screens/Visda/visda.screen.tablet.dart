import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .85;
        return SizedBox(
          width: maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment(-1, -1),
                child: SizedBox(
                  width: maxWidth * .5,
                  child: P1VisdIntro(),
                ),
              ),
              P2VisdaRow(
                maxWidth: maxWidth,
              ),
              SizedBox(
                width: maxWidth * .75,
                child: P3ApproachVisD(),
              ),
              P4SummitVisD(
                maxWidth: maxWidth,
              ),
              P5WayFinding(maxWidth: maxWidth)
            ],
          ),
        );
      }),
    );
  }
}
