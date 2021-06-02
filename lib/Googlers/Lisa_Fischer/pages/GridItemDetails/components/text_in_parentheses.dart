import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';

/// default `{ SOLUTION }` with `subTitleTextStyle`
class RichTextInParentheses extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  RichTextInParentheses({Key? key, this.text = "SOLUTION", this.textStyle})
      : super(key: key);

  TextStyle? paranTextStyle() {
    if (textStyle == null)
      return MyTextStyles().textInParan.copyWith(
            color: kColorDash,
          );
    else
      return textStyle?.copyWith(color: kColorDash);
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: normalStyle,
        children: [
          TextSpan(
            text: "{ ",
            style: paranTextStyle(),
          ),
          TextSpan(
            text: text,
            style: textStyle ?? MyTextStyles().textInParan,
          ),
          TextSpan(
            text: " }",
            style: paranTextStyle(),
          ),
        ],
      ),
    );
  }
}
