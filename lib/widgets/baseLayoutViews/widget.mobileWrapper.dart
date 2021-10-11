import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../widgets.dart';

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
                child: AnimatedLogo(),
              ),
            ),

            SliverToBoxAdapter(
              child: child,
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
