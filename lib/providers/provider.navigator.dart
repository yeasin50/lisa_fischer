import 'package:flutter/foundation.dart';

import '../constants/const.enum.pagesName.dart';

class PageNotifier extends ChangeNotifier {
  PageName? _pageName;
  bool _isUnknown = false;

  get pageName => _pageName;
  get isUnknown => _isUnknown;

  void changeScreen({
    required PageName? pageName,
    bool isUnkwon = false,
  }) {
    _pageName = pageName;
    _isUnknown = isUnkwon;
    notifyListeners();
    print(_pageName);
  }
}
