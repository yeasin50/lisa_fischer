import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';

class GridItem extends StatelessWidget {
  final String title;
  final Widget body;

  const GridItem({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: AppTextStyles.subtitle12.copyWith(
            color: Colors.black,
          ),
        ),

        /// dash
        DashLine(),

        body,
      ],
    );
  }
}
