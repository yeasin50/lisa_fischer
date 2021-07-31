import 'package:flutter/material.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';

import 'desktop.leveled.dart';

class LeveledGridItemScreen extends StatelessWidget {
  const LeveledGridItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Responsive(
          desktop: MaxWidthContainer(
            child: LeveledDesktopBody(),
          ),
          tablet: LeveledDesktopBody(),
          mobile: LeveledDesktopBody(),
        ),
      ),
    );
  }
}
