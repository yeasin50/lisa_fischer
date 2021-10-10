import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import 'widgets.dart';

class GridItem extends StatelessWidget {
  final String title;
  final Widget body;

  const GridItem({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        header(title),
        Container(
          padding: const EdgeInsets.only(top: 28),
          margin: const EdgeInsets.symmetric(
            vertical: 6,
          ),
          width: 30,
          height: 3,
          color: kColorDash,
        ),
        body,
      ],
    );
  }
}
