import 'package:flutter/material.dart';

import '../../../constants/config.textStyles.dart';
import 'widgets.dart';

class LisaExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'EXPERIENCE',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /// we need linked google here 😂😂
          Text(
            "Google",
            style: AppTextStyles.subHeaderRow,
          ),
          Text(
            "June 2017 - present\n",
            style: AppTextStyles.normal.copyWith(),
          ),
          Text(
            "Duffy",
            style: AppTextStyles.subHeaderRow,
          ),
          Text(
            "June 2016 - April 2017",
            style: AppTextStyles.normal.copyWith(),
          ),
        ],
      ),
    );
  }
}
