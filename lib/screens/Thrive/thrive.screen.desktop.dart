import 'package:flutter/material.dart';

import '../../constants/const.viewPercentages.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth * maxDesktopViewPortion;

        return Column(
          children: [
            SizedBox(
              width: constraints.maxWidth * maxDesktopViewIntroPortion,
              child: Intro(),
            ),
            SizedBox(
              width: _maxWidth,
              child: ImagesWithDetails(
                maxWidth: _maxWidth,
              ),
            ),
          ],
        );
      },
    );
  }
}
