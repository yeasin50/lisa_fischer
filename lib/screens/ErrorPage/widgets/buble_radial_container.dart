import 'dart:async';

import 'package:flutter/material.dart';
import '../utils/utils.dart';

class BubbleRadialContainer extends StatefulWidget {
  final double radius;
  final List<Color> colors;

  // change color over-Time passing 0 will avoid rebuilding animation
  final double animateRate;

  const BubbleRadialContainer({
    Key? key,
    required this.radius,
    required this.colors,
    this.animateRate = 2,
  }) : super(key: key);

  @override
  State<BubbleRadialContainer> createState() => _BubbleRadialContainerState();
}

class _BubbleRadialContainerState extends State<BubbleRadialContainer> {
  get _stopss => const [.1, .25, .42, .45, 1.0];

  List<Color> _colors = [];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _colors = widget.colors.toList();
    if (widget.animateRate != 0) _changeColorOverTime();
  }

  _changeColorOverTime() {
    final changeIndex = 3;
    _timer = Timer.periodic(const Duration(milliseconds: 200), (t) {
      _colors[changeIndex] = changeColorHue(
          color: _colors[changeIndex], newHueValue: widget.animateRate);

      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer != null) _timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.radius,
      width: widget.radius,
      // color: p.color,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: _colors,
          stops: _stopss,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
