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
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: _maxWidth * .65,
                  child: P1Intro(),
                ),
              ),
              P2ImageAndRow(
                maxWidth: _maxWidth,
              ),
              SizedBox(
                width: _maxWidth * .65,
                child: P3Approch(
                  maxWidth: _maxWidth * .65,
                ),
              ),
              P4Postars(
                maxWidth: _maxWidth,
              ),
              P5RaceDay(
                maxWidth: _maxWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}
