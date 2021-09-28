import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Intro(),
            ImagesWithDetails(
              constraints: constraints,
              isMobile: true,
            ),
          ],
        ),
      ),
    );
  }
}
