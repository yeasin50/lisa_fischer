import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/Contact/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class TabletView extends StatelessWidget {
  const TabletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.withOpacity(.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GetInTouchBrief(),
        ],
      ),
    );
  }
}
