import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  int get _gridItemCount => 1;
  
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
