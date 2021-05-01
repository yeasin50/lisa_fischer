import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'social_icons.dart';

class WorkFooter extends StatelessWidget {
  final TextStyle _footerTextStyle = GoogleFonts.lato();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "© LIsa Fischer 2021 | Designer | lisasuefischer@gmail.com",
            style: _footerTextStyle,
          ),
        ),
        SocialIcons(),
      ],
    );
  }
}
