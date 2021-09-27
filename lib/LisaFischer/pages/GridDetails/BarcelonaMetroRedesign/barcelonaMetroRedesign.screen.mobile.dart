import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Intro(),
          WorkProcessUsingBlurHash(),

          ///* from assets
          Tickets(
            isMobileView: true,
          ),
          MetroMobileApp(),
        ],
      ),
    );
  }
}
