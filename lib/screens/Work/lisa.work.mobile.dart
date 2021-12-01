import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';
import 'widgets/work_grid_items.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  int get _gridItemCount => 1;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final gridItemWidth = constraints.maxWidth / _gridItemCount;
        return Column(
          children: [
            AnimateEmojis(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                infoText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: AppTextStyles.fontFamily,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            WorkPageGridItems(
              gridItemCount: _gridItemCount,
              gridItemWidth: gridItemWidth,
            ),
          ],
        );
      },
    );
  }
}
