import 'package:flutter/material.dart';

import 'footer_text.dart';
import 'social_icons.dart';

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
      ));
}
