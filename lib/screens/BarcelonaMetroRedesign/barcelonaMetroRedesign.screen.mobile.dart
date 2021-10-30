import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          return Column(
            children: [
              // Intro(),
              // WorkProcessUsingBlurHash(
              //   maxWidth: maxWidth,
              // ),
              // Tickets(
              //   isMobileView: true,
              //   maxWidth: maxWidth,
              // ),
              MetroMobileApp(
                isMobile: true,
                maxWidth: maxWidth,
              ),
            ],
          );
        },
      ),
    );
  }
}
