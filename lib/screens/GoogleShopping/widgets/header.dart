import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/const.textStyles.dart';

class LockStatus extends StatefulWidget {
  const LockStatus({Key? key}) : super(key: key);

  @override
  State<LockStatus> createState() => _LockStatusState();
}

class _LockStatusState extends State<LockStatus> {
  get lockLogoColor => Colors.grey;

  // hover effect on RichText
  List<bool> _isHovered = List.generate(2, (index) => false);

  Color get _hoverColor => Colors.deepPurpleAccent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1,
              color: lockLogoColor,
            ),
          ),
          child: Icon(
            Icons.lock_rounded,
            size: 60,
            color: lockLogoColor,
          ),
        ),
        SizedBox(height: 24),
        Text(
          "Comming Soon",
          style: AppTextStyles.header,
        ),
        Text(
          "Still piecing together this page...",
          style: AppTextStyles.sub26.copyWith(
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
        SizedBox(height: 32),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Visit",
                style: AppTextStyles.textShadow,
              ),
              TextSpan(
                text: " shopping.google.com",
                style: _isHovered[0]
                    ? AppTextStyles.textShadowWithUnderline.copyWith(
                        shadows: AppTextStyles.hoverShadow,
                      )
                    : AppTextStyles.textShadow.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                onEnter: (event) => setState(() => _isHovered[0] = true),
                onExit: (event) => setState(() => _isHovered[0] = false),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch("https://shopping.google.com/");
                  },
              ),
              TextSpan(
                text: " for the live experience or see",
                style: AppTextStyles.textShadow,
              ),
              TextSpan(
                text: " more projects here.",
                style: _isHovered[01]
                    ? AppTextStyles.textShadowWithUnderline.copyWith(
                        shadows: AppTextStyles.hoverShadow,
                      )
                    : AppTextStyles.textShadow.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                onEnter: (event) => setState(() => _isHovered[01] = true),
                onExit: (event) => setState(() => _isHovered[01] = false),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    launch("http://www.lisasuefischer.com/");
                  },
              ),
            ],
          ),
        )
      ],
    );
  }
}
