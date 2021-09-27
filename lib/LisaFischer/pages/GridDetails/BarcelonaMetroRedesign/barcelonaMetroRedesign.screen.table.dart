import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: constraints.maxWidth * .75,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Intro(),
            WorkProcessUsingBlurHash(),

            ///* from assets
            Tickets(),
            MetroMobileApp(),
          ],
        ),
      ),
    );
  }
}
