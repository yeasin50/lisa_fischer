import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double _maxWidth = constraints.maxWidth * maxDesktopViewPortion;

        return SizedBox(
          width: _maxWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: constraints.maxWidth * maxDesktopViewIntroPortion,
                child: Intro(),
              ),
              WorkProcessUsingBlurHash(
                maxWidth: _maxWidth,
              ),
              Tickets(
                maxWidth: _maxWidth,
              ),
              MetroMobileApp(
                maxWidth: _maxWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}
