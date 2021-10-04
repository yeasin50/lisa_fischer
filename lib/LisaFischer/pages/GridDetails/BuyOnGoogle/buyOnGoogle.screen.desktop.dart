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
              //   alignment: Alignment(-1, -1),
              //   child: SizedBox(
              //     width: constraints.maxWidth * .4,
              //     child: P1GShopIntro(),
              //   ),
              // ),

              // P2ShowCase(
              //   maxWidth: maxWidth,
              // ),

              // P3Challenge2Solutions(
              //   maxWidth: maxWidth,
              // ),

              P4GShoppingActions(
                maxWidth: maxWidth,
              ),
              // columnSpace,

              // // ///`Google Shopping Actions Website`
              // P4GShoppingActions(),
            ],
          ),
        );
      },
    );
  }
}
