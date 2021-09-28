import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 875,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * .75,
              ),
              child: Intro(),
            ),
            ImagesWithDetails(
              constraints: constraints,
            ),
          ],
        ),
      ),
    );
  }
}
