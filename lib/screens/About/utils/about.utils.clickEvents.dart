import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../constants/const.enum.pagesName.dart';
import '../../../providers/provider.navigator.dart';
import '../../../widgets/widgets.dart';

class AboutPageClickEvent {
  static void getInTouchHandler(BuildContext context) {
    // Navigator.of(context).pushNamed(ContactPage.routeName);
    LSHeader.currentActiveIndex = 2;
    Provider.of<PageNotifier>(context, listen: false)
        .changeScreen(pageName: PageName.contact);
  }
}
