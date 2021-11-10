import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Image2xAnimation extends StatefulWidget {
//* used on oro tickets

  final String fontImagePath;
  final String backImagePath;
  final Duration delay;
  final double width;

  Image2xAnimation({
    Key? key,
    required this.fontImagePath,
    required this.backImagePath,
    this.delay = const Duration(milliseconds: 3000),
    required this.width,
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

  Widget _netWorkImage(String path) => Image.network(
        "$path?format=${widget.width}w",
        key: ValueKey(path),
        width: widget.width,
        fit: BoxFit.fitWidth,
      );

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.easeIn,
      secondCurve: Curves.easeInOut,
      firstChild: _netWorkImage(widget.fontImagePath),
      secondChild: _netWorkImage(widget.backImagePath),
      crossFadeState:
          _isFont ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}
