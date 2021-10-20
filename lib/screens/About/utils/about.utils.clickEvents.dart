import 'package:flutter/cupertino.dart';

import '../../../widgets/widgets.dart';
import '../../screens.dart';

class AboutPageClickEvent {
  static void getInTouchHandler(BuildContext context) {
    Navigator.of(context).pushNamed(ContactPage.routeName);
    LSHeader.currentActiveIndex = 2;
  }
}
