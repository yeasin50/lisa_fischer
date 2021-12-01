import 'package:flutter/material.dart';
import '../constants/const.enum.pagesName.dart';
import '../providers/provider.navigator.dart';
import '../utils/utils.dart';
import 'package:provider/provider.dart';

import 'configs.dart';
import '../widgets/widgets.dart';

class TabletViewWrapper extends StatelessWidget {
  final Widget child;
  const TabletViewWrapper({
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
                    padding: const EdgeInsets.only(top: 120),
                    child: Column(
                      children: [
                        child,
                        tabletWrapperHomeButton(context),
                      ],
                    ),
                  )),
                ),
              ],
            ),
          ),
          //* Header
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: kTabletMaxWidth,
              padding: EdgeInsets.only(top: 40, left: 16, right: 16),
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
      )),
    );
  }
}
