import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

import '../components/text_helper.dart';

class GridItem extends StatelessWidget {
  final String title;
  final Widget body;

  const GridItem({Key? key, required this.title, required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          header(title),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 6,
            ),
            width: 30,
            height: 3,
            color: kColorDash,
          ),
          body,
        ],
      ),
    );
  }
}
