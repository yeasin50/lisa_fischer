import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';
import '../utils/utils.dart';
import 'widgets.dart';

///This will be use as Rectframe, A little [Animation] of [Colors]
///this is repeated Animation using 4 colors.

class NeonRectBG extends StatefulWidget {
  ///Duration of animation default=`Duration(seconds: 3)`
  final Duration duration;

  // inrease the width while animating
  final double spreadFraction;

  // dublicate rect show blur same as rect color. default:4.0
  final double blurSpread;

  /// default Curve= `Curves.easeInOut`
  final Curve curve;

  /// Main Widget inside Frame
  final Widget child;

  ///The Space between child and outter Container known as NeonRectBG
  final double frameThickness;

  final Size size;

  NeonRectBG({
    Key? key,
    color: Colors.transparent,
    spreadRadius: 1,
    blurRadius: 1,
    this.duration = const Duration(seconds: 3),
    this.spreadFraction = .5,
    this.blurSpread = 4.0,
    this.curve = Curves.easeInOut,
    required this.child,
    required this.frameThickness,
    required this.size,
  }) : super(key: key);

  @override
  _NeonRectBGState createState() => _NeonRectBGState();
}

class _NeonRectBGState extends State<NeonRectBG>
    with SingleTickerProviderStateMixin {
  //dynamic color based on Hue
  List<Color> _randomColorPallet = color4Set1;
  double _colorHueValue = 0;

  late Animation<Alignment> _animation;
  late AnimationController _controller;

  // for blur
  late Animation<double> _blurAnimation;
  Timer? _timerHueChanger;

  ///`Engine` listner `setState` will handle updating ui, no need to call extra
  _initRect() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    )..addListener(() => setState(() {}));

    _animation = Tween<Alignment>(
      begin: Alignment(-1, -1),
      end: Alignment(1, 1),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0.0,
          1.0,
          curve: widget.curve,
        ),
      ),
    );

    _initBlurAnimation();
    // _changeHueAfterReverseAnimation(
    //   changeRate: 10,
    // );
    _changeHueOverTime(
      changeRate: 10,
      duration: Duration(milliseconds: 500),
    );
    _controller.repeat(reverse: true);
  }

  _initBlurAnimation() {
    _blurAnimation = Tween<double>(
      begin: 0,
      end: widget.blurSpread,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Interval(
        0.0,
        1.0,
        curve: widget.curve,
      ),
    ));
  }

  ///* preodic change color:hue
  _changeHueOverTime({
    Duration duration = const Duration(milliseconds: 100),
    double changeRate = 1.0,
  }) async {
    _timerHueChanger = Timer.periodic(duration, (timer) {
      _randomColorPallet = _randomColorPallet
          .map(
            (color) => changeColorHue(color: color, newHueValue: changeRate),
          )
          .toList();
    });
  }

  ////* change color: end of reverse
  _changeHueAfterReverseAnimation({required int changeRate}) {
    _blurAnimation.addStatusListener((status) {
      if (status == AnimationStatus.forward) {
        for (int i = 0; i < _randomColorPallet.length; i++) {
          _randomColorPallet[i] = changeColorHue(
              color: _randomColorPallet[i], newHueValue: _colorHueValue);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _initRect();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timerHueChanger?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // blur BG //just avoid building
        if (widget.blurSpread != 0)
          Opacity(
            key: ValueKey("BlurBGOnNe3nRect border"),
            opacity: _animation.value.y.abs(),
            child: RectClipperBackgroundBuilder(
              key: ValueKey("BlurBGOnNeonRect border"),
              borderThinckness: _blurAnimation.value * widget.spreadFraction,
              colors: _randomColorPallet,
              animAlignment: _animation.value,
              size: Size(
                widget.size.width + widget.frameThickness,
                widget.size.height + widget.frameThickness,
              ),
            ),
          ),

        ///`background` we can also use just one with controlling thinkness
        RectClipperBackgroundBuilder(
            key: ValueKey("BGOnNeonRect border"),
            borderThinckness: widget.frameThickness,
            colors: _randomColorPallet,
            animAlignment: _animation.value,
            size: Size(
              widget.size.width + widget.frameThickness,
              widget.size.height + widget.frameThickness,
            )),

        ///[child]
        widget.child,
      ],
    );
  }
}

class RectClipperBackgroundBuilder extends StatelessWidget {
  final double borderThinckness;
  final Size size;
  final List<Color> colors;
  final Alignment animAlignment;

  const RectClipperBackgroundBuilder({
    Key? key,
    required this.borderThinckness,
    required this.size,
    required this.colors,
    required this.animAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: RectClippet(
        borderThinckness: borderThinckness,
      ),
      child: Container(
        key: key,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          // borderRadius: widget.borderRadius,

          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            begin: Alignment(
              0,
              1.0 - animAlignment.y,
            ),
            end: Alignment(
              animAlignment.x,
              animAlignment.y,
            ),

            ///breakPoints of [LinearGradient] colors
            stops: [.0, .4, .7, 1.0],
            colors: colors,
          ),
        ),
      ),
    );
  }
}
