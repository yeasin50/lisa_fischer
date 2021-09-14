import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.textStyles.dart';

class GetInTouchBrief extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Get In Touch\n",
            style: titleTextStyle,
          ),
          TextSpan(
            text:
                "\nAvailable for questions, collaborations, projects & coffee.",
            style: subHeaderTextStyle,
          ),
          TextSpan(
            text: "\n— Based in the San Francisco Bay area.",
            style: normalItalic,
          ),
        ],
      ),
    );
  }
}
