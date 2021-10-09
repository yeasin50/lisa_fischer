import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = constraints.maxWidth;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                P1GShopIntro(),
                P2ShowCase(
                  maxWidth: maxWidth,
                  isMobile: true,
                ),
                P3Challenge2Solutions(
                  maxWidth: maxWidth,
                  isMobile: true,
                ),
                P4GShoppingActions(
                  maxWidth: maxWidth,
                ),
                VideoAdsWeb(
                  maxWidth: maxWidth,
                  isMobile: true,
                ),
              ],
            );
          },
        ));
  }
}
