import 'package:flutter/material.dart';

import '../../constants/const.textStyles.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class TabletView extends StatefulWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  State<TabletView> createState() => _TabletViewState();
}

class _TabletViewState extends State<TabletView> {
  int get _gridItemCount => 2;

  @override
  void initState() {
    super.initState();
    _initDialog();
  }

  _initDialog() async {
    await initalDialog(context);
  }

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
          ],
        );
      },
    );
  }
}
