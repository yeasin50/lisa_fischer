import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../providers/provider.navigator.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';

class MobieViewWrapper extends StatelessWidget {
  final Widget child;
  const MobieViewWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: LSMenu(),
            ),

            ///* Logo
            SliverPadding(
              padding: EdgeInsets.only(
                top: spaceBetweenColumnItemsOnMobile,
                bottom: spaceBetweenColumnItemsOnMobile,
              ),
              sliver: SliverToBoxAdapter(
                child: Consumer<PageNotifier>(
                  builder: (context, value, child) => AnimatedLogo(
                    animType: value.pageName == PageName.contact
                        ? AnimationType.scaleX
                        : AnimationType.rotate,
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: child,
            ),

            SliverToBoxAdapter(
              child: homeNavigatorButton(context),
            ),

            SliverPadding(
              padding: EdgeInsets.symmetric(
                vertical: spaceBetweenColumnItemsOnMobile,
              ),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: [
                    SocialIcons(),
                    FooterText(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
