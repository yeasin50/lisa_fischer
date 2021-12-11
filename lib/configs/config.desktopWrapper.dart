import 'package:flutter/material.dart';
import '../providers/providers.dart';
import 'package:provider/provider.dart';

import '../constants/const.enum.pagesName.dart';
import '../providers/provider.navigator.dart';
import '../screens/Work/widgets/work_grid_items.dart';
import '../widgets/widgets.dart';
import 'configs.dart';

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
        body: LayoutBuilder(
          builder: (context, constraints) => Stack(
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
                        child: Column(
                          children: [
                            child,
                            WorkPageGridItems(
                              key: UniqueKey(),
                              gridItemCount: 3,
                              gridItemWidth:
                                  constraints.maxWidth / 3, //for image format
                            ),
                          ],
                        ),
                      )),
                    ),
                  ],
                ),
              ),

              //* Footer
              Align(
                alignment: Alignment(0, 1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FooterText(),
                          Consumer<ProjectSetting>(
                            builder: (context, value, child) {
                              if (value.cloneInfoOnFooter) {
                                return ProjectFooter(
                                  size: Size(
                                    constraints.maxWidth * .25,
                                    kToolbarHeight * .75,
                                  ),
                                );
                              } else
                                return SizedBox();
                            },
                          ),
                          SocialIcons(),
                        ],
                      ),
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
          ),
        ),
      ),
    );
  }
}
