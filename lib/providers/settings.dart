//helper for user settings, like controlling dialog and project footer...

import 'package:flutter/cupertino.dart';

class ProjectSetting extends ChangeNotifier {
  bool _showDialog = true;
  bool _showCloneInfoOnFooter = true;

  static final initDialogDelay = const Duration(seconds: 2);

  get cloneInfoOnFooter => _showCloneInfoOnFooter;
  get showDialog => _showDialog;

  void cancelDialog() {
    _showDialog = false;
    notifyListeners();
  }

  void enableDialog() {
    _showDialog = true;
    notifyListeners();
  }

  void showCloneInfoOnFooter() {
    _showCloneInfoOnFooter = true;
    notifyListeners();
  }

  void hideCloneInfoOnFooter() {
    _showCloneInfoOnFooter = false;
    notifyListeners();
  }
}
