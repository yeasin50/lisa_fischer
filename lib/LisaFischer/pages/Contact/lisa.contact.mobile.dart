import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../constants/constants.dart';
import '../About/widgets/widgets.dart';
import 'widgets/widgets.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...[
              GetInTouchBrief(),
              columnSpace,
              ContactGif(),
              ContactForm(), //*FIXME: controll when text scroll at end
              divider,
              ConnectOnAbout(),
              ContactOnAbout(),
            ].map(
              (e) => Padding(
                padding: EdgeInsets.only(
                  bottom: columnSpace.height!,
                ),
                child: e,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
