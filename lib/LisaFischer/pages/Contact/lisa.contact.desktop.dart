import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../constants/constants.dart';
import '../About/widgets/widgets.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth * .75;
        return SizedBox(
          width: maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GetInTouchBrief(),
              SizedBox(
                height: columnSpace.height! * 3,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: maxWidth / 2,
                    child: ContactGif(),
                  ),
                  SizedBox(
                    width: maxWidth / 2,
                    child: ContactForm(),
                  ),
                ],
              ),

              columnSpace,
              divider,
              columnSpace,

              //* Contact Row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConnectOnAbout(),
                  SizedBox(width: 100),
                  ContactOnAbout(),
                ],
              ),
              columnSpace,
            ],
          ),
        );
      },
    );
  }
}
