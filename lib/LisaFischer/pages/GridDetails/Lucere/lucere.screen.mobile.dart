import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: constraints.maxWidth * .75,
              ),
              child: Intro(),
            ),
            Padding(
              padding: const EdgeInsets.all(
                8.0,
              ),
              child: ImagesWithDetails(
                constraints: constraints,
              ),
            ),
          ],
        );
      },
    );
  }
}
