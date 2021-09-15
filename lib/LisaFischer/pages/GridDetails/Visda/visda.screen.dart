import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';

import 'desktop.body.visda.dart';

class VisdaGridItemScreen extends StatelessWidget {
  const VisdaGridItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
          desktop: MaxWidthContainer(
            child: VisdaDesktopBody(),
          ),
          tablet: VisdaDesktopBody(),
          mobile: VisdaDesktopBody(),
        ),
      ),
    );
  }
}
