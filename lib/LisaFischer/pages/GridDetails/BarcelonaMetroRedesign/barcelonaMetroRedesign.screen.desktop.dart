import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 875,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 875 * .7,
            ),
            child: Intro(),
          ),
          WorkProcessUsingBlurHash(),

          ///* from assets
          Tickets(),
          MetroMobileApp(),
        ],
      ),
    );
  }
}
