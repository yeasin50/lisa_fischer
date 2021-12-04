import 'package:flutter/material.dart';

class BubbleRadialContainer extends StatelessWidget {
  final double radius;
  final List<Color> colors;

  const BubbleRadialContainer({
    Key? key,
    required this.radius,
    required this.colors,
  }) : super(key: key);
  get _stopss => const [.1, .25, .42, .45, 1.0];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      // color: p.color,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: colors,
          stops: _stopss,
        ),
        shape: BoxShape.circle,
      ),
      // child: Image.asset(
      //   "assets/images/neon.jpg",
      //   fit: BoxFit.cover,
      // ),
    );
  }
}
