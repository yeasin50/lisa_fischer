import 'package:flutter/material.dart';

import 'lisa.about.widget.grid.dart';
import 'lisa.about.widget.textHelper.dart';

class LisaExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
      title: 'EXPERIENCE',
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          subHeader("Google"),
          normalText("June 2017 - present\n"),
          subHeader("Duffy"),
          normalText("June 2016 - April 2017"),
        ],
      ),
    );
  }
}
