import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class NeonCircle extends StatefulWidget {
  final Widget child;
  final double width;

  const NeonCircle({
    Key? key,
    required this.child,
    required this.width,
  }) : super(key: key);

  @override
  _NeonCircleState createState() => _NeonCircleState();
}

class _NeonCircleState extends State<NeonCircle>
    with SingleTickerProviderStateMixin {
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  List<Color> _colors = [
    Color.fromRGBO(175, 61, 255, 1),
    Color.fromRGBO(85, 255, 225, 1),
    Color.fromRGBO(255, 59, 148, 1),
    Color.fromRGBO(166, 253, 41, 1),
  ];

  late Animation _animation;
  late AnimationController _controller;

  final Random random = Random();

  _initWave() {
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..addListener(() => setState(() {}));

    _animation = Tween<double>(begin: 0, end: 270).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0.0,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );

    _controller.repeat(reverse: true);
  }

  @override
  void initState() {
    super.initState();
    _initWave();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return buildChildCircle();
  }

  Stack buildChildCircle() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: _animation.value * pi / 180,
          child: Container(
            height: widget.width + 9,
            width: widget.width + 9,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: _animation.value < 55
                      ? _colors[random.nextInt(_colors.length - 1)]
                      : Colors.transparent,
                  spreadRadius: 2,
                ),
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: _animation.value < 50
                    ? [
                        _colors[0],
                        _colors[3],
                      ]
                    : _colors,
              ),
            ),
          ),
        ),
        ClipOval(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: widget.width,
              maxWidth: widget.width,
            ),
            child: widget.child,
          ),
        ),
      ],
    );
  }
}
