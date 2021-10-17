import 'package:flutter/foundation.dart';

import '../constants/const.enum.pagesName.dart';

class PageNotifier extends ChangeNotifier {
  PageName? _pageName;

  get pageName => _pageName;

  void changeScreen(PageName? pg) {
    _pageName = pg;
    notifyListeners();
    print(_pageName.toString());
  }
}
