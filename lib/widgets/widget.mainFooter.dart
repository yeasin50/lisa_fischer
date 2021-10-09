import 'package:flutter/material.dart';
import 'package:portfolio/widgets/widgets.dart';

Container footerRow() {
  return Container(
    color: Colors.white,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FooterText(),
        SocialIcons(),
      ],
    ),
  );
}
