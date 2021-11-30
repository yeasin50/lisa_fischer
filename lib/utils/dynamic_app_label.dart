import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//'Dynamic web app title'
void dynamicAppLabel({
  BuildContext? context,
  required String label,
}) {
  
  SystemChrome.setApplicationSwitcherDescription(
    ApplicationSwitcherDescription(
      label: label,
      primaryColor:
          context == null ? null : Theme.of(context).primaryColor.value,
    ),
  );
}
