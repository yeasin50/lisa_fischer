import 'package:flutter/material.dart';

get dividerColor => Colors.black;
get dividerThickness => 1.3;

get dividerIndent => 20.0;

Divider get divider => Divider(
      color: dividerColor,
      thickness: dividerThickness,
      indent: dividerIndent,
      endIndent: dividerIndent,
    );
