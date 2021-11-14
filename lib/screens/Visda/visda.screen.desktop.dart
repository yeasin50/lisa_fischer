import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * maxDesktopViewPortion;
        return SizedBox(
          width: maxWidth,
          child: Column(
            children: [
              Align(
                alignment: Alignment(-1, -1),
                child: SizedBox(
                  width: constraints.maxWidth * maxDesktopViewIntroPortion,
                  child: P1VisdIntro(),
                ),
              ),
              P2VisdaRow(
                maxWidth: maxWidth,
              ),
              () {
                final aprochWidth = maxWidth * .65;
                return SizedBox(
                  width: aprochWidth,
                  child: P3ApproachVisD(
                    maxWidth: aprochWidth,
                  ),
                );
              }(),
              P4SummitVisD(
                maxWidth: maxWidth,
              ),
              P5WayFinding(
                maxWidth: maxWidth,
              )
            ],
          ),
        );
      },
    );
  }
}
