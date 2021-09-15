import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/BuyOnGoogle/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

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
