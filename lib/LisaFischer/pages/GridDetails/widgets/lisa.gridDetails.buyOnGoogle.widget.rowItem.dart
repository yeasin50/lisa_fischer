import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';

/// GirdItems details helper=> Row
class RowItem extends StatelessWidget {
  final String title;
  final Widget body;
  final double width;

  const RowItem({
    Key? key,
    required this.width,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: kFproximaNova,
              fontSize: 12.5,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 6,
              bottom: 15,
            ),
            width: 25,
            height: 3,
            color: kColorDash,
          ),

          ///main Text part
          body,
        ],
      ),
    );
  }
}
