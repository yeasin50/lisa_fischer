import 'package:flutter/material.dart';
import '../constants/constants.dart';

/// GirdItems details helper=> Row
class RowItem extends StatelessWidget {
  final String title;
  final Widget body;
  final double? width; //TODO: rm, still finding a better way to handle this

  final bool isMobile;

  const RowItem({
    Key? key,
    this.width,
    required this.title,
    required this.body,
    this.isMobile = false,
  }) : super(key: key);

  get _body => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: AppTextStyles.subtitle12.copyWith(color: Colors.black),
          ),

          Padding(
            padding: EdgeInsets.only(
              top: isMobile ? 5 : 10,
              bottom: isMobile ? 7 : 14,
            ),
            child: Container(
              width: 25,
              height: 3,
              color: kColorDash,
            ),
          ),

          ///main Text part
          body,
        ],
      );

  @override
  Widget build(BuildContext context) {
    return width == null
        ? _body
        : SizedBox(
            width: width,
            child: _body,
          );
  }
}
