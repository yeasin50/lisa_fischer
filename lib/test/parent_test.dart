import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/connectAndContact/connect.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/connectAndContact/contactOnAbout.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/components/connectAndContact/get_in_touch_button.dart';

class TestLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TestBody(),
      ),
    );
  }
}

class TestBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConnectOnAbout(),
          ContactOnAbout(),
          // extra space handler, you can use any empty widget here
          Container(),

          GetInTouch(),
        ],
      ),
    );
  }
}
