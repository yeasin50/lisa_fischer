import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

import 'parts/p1_brief.dart';
import 'parts/p2_showCase.dart';
import 'parts/p3_challenge_2_solutions.dart';
import 'parts/p4_gshop_actions.dart';

class DesktopBody extends StatelessWidget {
  get divSpace => SizedBox(
        height: 50,
      );
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                P1GShopIntro(),
                divSpace,

                P2ShowCase(constraints: constraints),

                divSpace,
                P3Challenge2Solutions(),

                P4GShoppingActions(),
                columnSpace,

                // ///`Google Shopping Actions Website`
                P4GShoppingActions(),

                //later  //TODO:: Start form p4
                // P5VideoAds(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
