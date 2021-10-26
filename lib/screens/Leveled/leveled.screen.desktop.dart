import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth * maxDesktopViewPortion;

        return SizedBox(
          width: _maxWidth,
          child: Column(
            children: [
              Align(
                alignment: Alignment(-1, -1),
                child: SizedBox(
                  width: _maxWidth * .4,
                  child: P1LeveledIntro(),
                ),
              ),
              P2LeveledRow(
                maxWidth: _maxWidth, //last one
              ),
              SizedBox(
                width: _maxWidth * .5,
                child: P3ApproachLeveled(),
              ),
              P4Mood2(maxWidth: _maxWidth),
              P5Leveled(maxWidth: _maxWidth)
            ],
          ),
        );
      },
    );
  }
}
