import 'package:flutter/material.dart';
import 'widgets.dart';

import '/configs/config.textStyles.dart';

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
            style: MyTextStyles().subHeaderRow,
          ),
          Text(
            "June 2017 - present\n",
            style: MyTextStyles().normatText.copyWith(),
          ),
          Text(
            "Duffy",
            style: MyTextStyles().subHeaderRow,
          ),
          Text(
            "June 2016 - April 2017",
            style: MyTextStyles().normatText.copyWith(),
          ),
        ],
      ),
    );
  }
}
