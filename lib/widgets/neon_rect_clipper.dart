import 'package:flutter/material.dart';

class RectClippet extends CustomClipper<Path> {
  final double borderThinckness;
  RectClippet({
    required this.borderThinckness,
  });
  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 0)
      ..lineTo(borderThinckness, borderThinckness)
      ..lineTo(borderThinckness, size.height - borderThinckness)
      ..lineTo(size.width - borderThinckness, size.height - borderThinckness)
      ..lineTo(size.width - borderThinckness, borderThinckness)
      ..lineTo(borderThinckness, borderThinckness);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
