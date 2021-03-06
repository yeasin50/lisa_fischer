import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../utils/utils.dart';
import 'utils/utils.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatefulWidget {
  @override
  State<DesktopView> createState() => _DesktopViewState();
}

class _DesktopViewState extends State<DesktopView> {
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
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimateEmojis(),

            ///* `header Text`
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: 70,
                  maxWidth: 700,
                ),
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
            //bottom empty space, because we didnt we container 👆
            SizedBox(
              height: 16,
            ),
          ],
        );
      },
    );
  }
}
