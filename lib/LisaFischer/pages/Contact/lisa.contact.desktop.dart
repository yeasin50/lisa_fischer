import 'package:flutter/material.dart';

import 'package:portfolio/configs/configs.dart';

import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: kTabletMaxWidth * .5),
          child: GetInTouchBrief(),
        ),
        SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: kTabletMaxWidth * .5),
              child: ContactGif(),
            ),
            // ConstrainedBox(
            //     constraints: BoxConstraints(
            //       maxWidth: constraints.maxWidth * .5,
            //     ),
            // child:
            // ContactForm()
            //  ),
          ],
        ),
      ],
    );
  }
}
