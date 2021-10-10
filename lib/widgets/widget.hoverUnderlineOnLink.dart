import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../configs/configs.dart';

///* pass Text  in order and use bool value(because keys cant be dublicated) to use effect on that text
class HoverEffectOnLink extends StatefulWidget {
  ///** one link supported. */ hope my project doesnt need another one
  final Map<String, bool> textInOrder;
  final String domainUrl;

  HoverEffectOnLink({
    Key? key,
    required this.textInOrder,
    required this.domainUrl,
  }) : super(key: key);

  @override
  _HoverEffectOnLinkState createState() => _HoverEffectOnLinkState();
}

class _HoverEffectOnLinkState extends State<HoverEffectOnLink> {
  bool? _isHovered;

  List<TextSpan> spans() {
    List<TextSpan> spans = [];
    widget.textInOrder.forEach((key, value) {
      value
          ? spans.add(
              TextSpan(
                text: "$key ",
                style: AppTextStyles.normal.copyWith(
                  fontWeight: FontWeight.bold,
                  color: _isHovered != null
                      ? kColorDash
                      : AppTextStyles.normal.color,
                ),
                onEnter: (event) => setState(() => _isHovered = true),
                onExit: (event) => setState(() => _isHovered = null),
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await canLaunch(widget.domainUrl)
                        ? launch(widget.domainUrl)
                        : print("coundn't find");
                  },
              ),
            )
          : spans.add(
              TextSpan(
                text: "$key ",
                style: AppTextStyles.normal.copyWith(),
              ),
            );
    });

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: spans(),
      ),
    );
  }
}
