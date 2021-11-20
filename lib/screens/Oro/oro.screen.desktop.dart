import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth * maxDesktopViewPortion;
        //* in oro, portion of maxBodyView is < others' body

        return SizedBox(
          width: _maxWidth,
          child: Column(
            children: [
              SizedBox(
                width: constraints.maxWidth * maxDesktopViewIntroPortion,
                child: Intro(),
              ),
              //all are image 🤐
              ImagesWithDetails(
                maxWidth: _maxWidth,
              ),
            ],
          ),
        );
      },
    );
  }
}
