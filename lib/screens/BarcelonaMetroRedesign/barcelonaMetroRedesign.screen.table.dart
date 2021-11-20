import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: constraints.maxWidth * .5,
              child: Intro(),
            ),
            () {
              final maxWidth = constraints.maxWidth * .6;
              return SizedBox(
                width: maxWidth,
                child: Column(
                  children: [
                    WorkProcessUsingBlurHash(
                      maxWidth: maxWidth,
                    ),
                    Tickets(
                      maxWidth: maxWidth,
                    ),
                    MetroMobileApp(
                      maxWidth: maxWidth,
                    ),
                  ],
                ),
              );
            }(),
            footerRow(),
          ],
        );
      },
    );
  }
}
