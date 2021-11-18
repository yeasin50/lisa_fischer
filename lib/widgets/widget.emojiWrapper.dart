import 'package:flutter/material.dart';

/// having trouble on emoji render, backUp plan
class EmojiWrapper extends StatelessWidget {
  const EmojiWrapper({
    Key? key,
    required this.imageName,
    required this.size,
  }) : super(key: key);

  final String imageName;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/emojis/$imageName.png",
      fit: BoxFit.contain,
      width: size,
    );
  }
}
