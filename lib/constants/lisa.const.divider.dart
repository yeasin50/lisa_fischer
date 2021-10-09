import 'package:flutter/material.dart';

get dividerColor => Colors.grey;
get dividerThickness => 1.3;

get dividerIndent => 20.0;

Divider get divider => Divider(
      color: dividerColor,
      thickness: dividerThickness,
    );

SizedBox get spaceBetweenColumnItemsOnDesktop => SizedBox(
      height: 45,
    );

SizedBox get spaceBetweenColumnItemsOnTablet => SizedBox(
      height: 35,
    );

double get spaceBetweenColumnItemsOnMobile => 12.0;

SizedBox get spaceBetweenColumnOnMobile => SizedBox(
      height: spaceBetweenColumnItemsOnMobile,
    );

double get paddingLeftAndRight => 16.0;
