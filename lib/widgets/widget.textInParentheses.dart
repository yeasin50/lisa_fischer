import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';

/// default `{ SOLUTION }` with `subTitleTextStyle`
class RichTextInParentheses extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;

  RichTextInParentheses({Key? key, this.text = "SOLUTION", this.textStyle})
      : super(key: key);

  TextStyle? paranTextStyle() {
    if (textStyle == null)
      return AppTextStyles.textInParan13.copyWith(
        color: kColorDash,
      );
    else
      return textStyle?.copyWith(color: kColorDash);
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: AppTextStyles.normal,
        children: [
          TextSpan(
            text: "{ ",
            style: paranTextStyle(),
          ),
          TextSpan(
            text: text,
            style: textStyle ?? AppTextStyles.textInParan13,
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
