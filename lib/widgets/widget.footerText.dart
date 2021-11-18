import 'package:flutter/material.dart';
import '../constants/constants.dart';

class FooterText extends StatelessWidget {
  final TextStyle _footerTextStyle = TextStyle(
    fontFamily: AppTextStyles.fontFamily,
  );

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
