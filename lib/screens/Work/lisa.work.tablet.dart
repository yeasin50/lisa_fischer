import 'package:flutter/material.dart';
import 'package:portfolio/screens/Work/widgets/work_grid_items.dart';

import '../../constants/const.textStyles.dart';
import '../../widgets/widgets.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  int get _gridItemCount => 2;

  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;

    return LayoutBuilder(
      builder: (context, constraints) {
        final gridItemWidth = constraints.maxWidth / _gridItemCount;

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimateEmojis(),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: SizedBox(
                width: constraints.maxWidth * .6,
                child: Text(
                  infoText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: AppTextStyles.fontFamily,
                    fontSize: _fontS,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            WorkPageGridItems(
              gridItemWidth: gridItemWidth,
              gridItemCount: 2,
            ),
            footerRow(),
          ],
        );
      },
    );
  }
}
