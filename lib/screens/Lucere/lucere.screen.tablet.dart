import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth * .8;
        return Column(
          children: [
            SizedBox(
              width: constraints.maxWidth * .65,
              child: Intro(),
            ),
            SizedBox(
              width: _maxWidth,
              child: ImagesWithDetails(
                maxWidth: _maxWidth,
              ),
            ),
          ],
        );
      },
    );
  }
}
