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
            style: AppTextStyles.title,
          ),
          TextSpan(
            text:
                "\nAvailable for questions, collaborations, projects & coffee.",
            style: AppTextStyles.sub26,
          ),
          TextSpan(
            text: "\n— Based in the San Francisco Bay area.",
            style: AppTextStyles.normal.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
