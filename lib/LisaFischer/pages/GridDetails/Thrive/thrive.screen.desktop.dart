import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth * .5,
            ),
            child: Intro(),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth * .75,
            ),
            child: ImagesWithDetails(
              constraints: constraints,
            ),
          ),
        ],
      ),
    );
  }
}
