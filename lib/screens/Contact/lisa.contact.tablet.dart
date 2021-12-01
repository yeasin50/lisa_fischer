import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../constants/constants.dart';
import '../About/widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .9;

        return Column(
          children: [
            SizedBox(
              width: maxWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: maxWidth * .7,
                    child: GetInTouchBrief(),
                  ),
                  SizedBox(
                    height: columnSpace.height! * 3,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: maxWidth * .5,
                        child: ContactGif(),
                      ),
                      SizedBox(
                        width: maxWidth * .5,
                        child: ContactForm(),
                      ),
                    ],
                  ),
                  divider,
                  SizedBox(
                    height: columnSpace.height! * 1.5,
                  ),
                  //* Contact Row
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConnectOnAbout(),
                      SizedBox(width: 100),
                      ContactOnAbout(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: columnSpace.height! * 1.5,
            ),
          ],
        );
      },
    );
  }
}
