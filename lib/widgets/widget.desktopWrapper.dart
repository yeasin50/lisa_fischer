import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/widgets/lisa.widget.header.dart';
import 'package:portfolio/LisaFischer/widgets/lisa.widget.socialIcons.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class DesktopViewWrapper extends StatelessWidget {
  final Widget child;
  const DesktopViewWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //* body
            Align(
              alignment: Alignment(0, 0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: MaxWidthContainer(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 150,
                          bottom: 80,
                        ),
                        child: child,
                      ),
                    ),
                  )
                ],
              ),
            ),

            //* Footer
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FooterText(),
                    SocialIcons(),
                  ],
                ),
              ),
            ),
            //* Header
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: kTabletMaxWidth,
                padding: EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedLogo(
                      animType: AnimationType.rotate,
                    ),
                    LSHeader().navigators(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
