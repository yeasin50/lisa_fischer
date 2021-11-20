import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
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
                    child: P1GShopIntro(),
                  ),
                ),
                P2ShowCase(
                  maxWidth: maxWidth,
                ),
                P3Challenge2Solutions(
                  maxWidth: maxWidth,
                ),
                P4GShoppingActions(
                  maxWidth: maxWidth,
                ),
                VideoAdsWeb(
                  maxWidth: maxWidth,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
