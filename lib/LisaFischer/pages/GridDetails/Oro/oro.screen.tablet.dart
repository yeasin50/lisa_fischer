import 'package:flutter/material.dart';

import '../../../widgets/widgets.dart';
import 'widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        children: [
          Intro(),
          ImagesWithDetails(
            constraints: constraints,
          ),
          footerRow(),
        ],
      ),
    );
  }
}
