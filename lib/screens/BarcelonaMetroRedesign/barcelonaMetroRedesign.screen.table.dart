import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: constraints.maxWidth * .5,
            child: Intro(),
          ),
          SizedBox(
            width: constraints.maxWidth * .6,
            child: Column(
              children: [
                columnSpace,

                WorkProcessUsingBlurHash(
                  maxWidth: constraints.maxWidth * .6,
                ),

                columnSpace,

                ///* from assets
                Tickets(),
                MetroMobileApp(),
              ],
            ),
          ),
          footerRow(),
        ],
      ),
    );
  }
}
