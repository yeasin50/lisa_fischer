import 'package:flutter/material.dart';
import 'package:portfolio/config/max_width_container.dart';
import 'package:portfolio/config/responsive.dart';

import 'body.dart';

class LisaAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rebuild Page");
    return Scaffold(
      body: SafeArea(
        child: Responsive(
          mobile: Container(
            color: Colors.green,
            child: Text("Phone,"),
          ),
          tablet: LSAboutPageBody(
            gridItemCount: 3,
          ),
          desktop: MaxWidthContainer(
            child: LSAboutPageBody(
              gridItemCount: 4,
            ),
          ),
        ),
      ),
    );
  }
}
