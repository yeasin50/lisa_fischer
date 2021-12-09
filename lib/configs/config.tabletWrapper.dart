import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../providers/provider.navigator.dart';
import '../utils/utils.dart';
import '../widgets/widgets.dart';
import 'configs.dart';

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
                        homeNavigatorButton(context),
                        footerRow(),
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
                  Consumer<PageNotifier>(
                    builder: (context, value, child) => AnimatedLogo(
                      animType: value.pageName == PageName.contact
                          ? AnimationType.scaleX
                          : AnimationType.rotate,
                    ),
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
