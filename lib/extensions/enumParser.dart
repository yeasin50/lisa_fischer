import 'package:flutter/cupertino.dart';

import '../constants/constants.dart';

extension PageExtension on PageName {
  String get value => this.toString().split('.').last;

  RouteInformation get location => RouteInformation(
        location: "/${this.toString().split('.').last}",
      );
}
