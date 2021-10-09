import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Image2xAnimation extends StatefulWidget {
//* used on oro tickets

  final String fontImagePath;
  final String backImagePath;
  final Duration delay;
  final Size imageSize;

  Image2xAnimation({
    Key? key,
    required this.fontImagePath,
    required this.backImagePath,
    this.delay = const Duration(milliseconds: 3000),
    required this.imageSize,
  }) : super(key: key);

  @override
  _Image2xAnimationState createState() => _Image2xAnimationState();
}

class _Image2xAnimationState extends State<Image2xAnimation> {
  bool _isFont = true;

  late Timer timer;

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(widget.delay, (timer) {
      setState(() {
        _isFont = !_isFont;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.easeIn,
      secondCurve: Curves.easeInOut,
      firstChild: Image.asset(
        widget.fontImagePath,
        key: ValueKey(widget.fontImagePath),
        width: widget.imageSize.width,
        // height: widget.imageSize.height,
        fit: BoxFit.fitWidth,
      ),
      secondChild: Image.asset(
        widget.backImagePath,
        key: ValueKey(widget.backImagePath),
        width: widget.imageSize.width,
        fit: BoxFit.fitWidth,
        // height: widget.imageSize.height,
      ),
      crossFadeState:
          _isFont ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}
