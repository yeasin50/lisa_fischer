import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/utils.dart';

// clarify the viewers it's a replica site of the real site
class ProjectFooter extends StatefulWidget {
  const ProjectFooter({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _ProjectFooterState createState() => _ProjectFooterState();
}

Color changeColorHue({
  required Color color,
  required double increaseBy,
}) {
  HSLColor hslColor = HSLColor.fromColor(color);
  final _newHueValue = (increaseBy + hslColor.hue);

  return hslColor
      .withHue(
        _newHueValue % 360 < 0 ? _newHueValue : _newHueValue % 360,
      )
      .toColor();
}

get color4Set2 => const [
      Colors.white,
      Colors.red,
      Colors.white,
    ];

class _ProjectFooterState extends State<ProjectFooter> {
  List<Color> _randomizeColor = color4Set2.toList();

  late AnimationController _controller;
  late Animation<double> _stopsAnimation;

  Timer? _timer;

  _initTimer() {
    _timer = Timer.periodic(
      const Duration(milliseconds: 100),
      (_) {
        _randomizeColor = [
          _randomizeColor[0],
          changeColorHue(color: _randomizeColor[1], increaseBy: 2),
          _randomizeColor[2],
        ];

        setState(() {});
      },
    );
  }

  @override
  void initState() {
    super.initState();
    // _initAnimation();
    _initTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => extendedFooterTapEvent(context),
      child: SizedBox(
        height: widget.size.height,
        width: widget.size.width,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: _randomizeColor,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.white24,
                child: Text(
                  "⚠  It's a replica site of the real site",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
