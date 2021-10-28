import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth - 8.0 * 2;
        return Column(
          children: [
            SizedBox(
              width: constraints.maxWidth * .75,
              child: Intro(),
            ),
            Padding(
              //TODO: may goto top level
              padding: const EdgeInsets.all(
                8.0,
              ),
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
