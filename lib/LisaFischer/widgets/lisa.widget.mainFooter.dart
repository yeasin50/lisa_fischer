import 'package:flutter/material.dart';

import 'lisa.widget.footerText.dart';
import 'lisa.widget.socialIcons.dart';

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
