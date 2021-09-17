import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterText extends StatelessWidget {
  final TextStyle _footerTextStyle = GoogleFonts.lato();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SelectableText(
        "© LIsa Fischer 2021 | Designer | lisasuefischer@gmail.com",
        style: _footerTextStyle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
