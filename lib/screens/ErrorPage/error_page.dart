import 'package:flutter/material.dart';

import '../../configs/configs.dart';
import '../../utils/utils.dart';
import '../screens.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Couldn't found 🤐",
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Responsive(
        mobile: MobileView(),
        tablet: TabletView(),
        desktop: DesktopView(),
      ),
    );
  }
}
