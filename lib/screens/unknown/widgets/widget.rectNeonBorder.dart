import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../../../constants/constants.dart';

import '../utils/random_color.dart';
import 'widgets.dart';

///This will be use as Rectframe, A little [Animation] of [Colors]
///this is repeated Animation using 4 colors.

class NeonRectBG extends StatefulWidget {
  ///Duration of animation default=`Duration(seconds: 3)`
  final Duration duration;

  // be curcular border , depend on parent's
  final BorderRadiusGeometry? borderRadius;
  // dublicate rect show blur same as rect color. default:4.0
  final double blurSpread;

  /// default Curve= `Curves.easeInOut`
  final Curve curve;

  /// Main Widget inside Frame
  final Widget child;

  ///The Space between child and outter Container known as NeonRectBG
  final double frameThickness;

  final Size size;

  /// default there is no shadow
  final List<BoxShadow> boxShadow;

  NeonRectBG({
    Key? key,
    this.duration = const Duration(seconds: 3),
    this.blurSpread = 4.0,
    this.borderRadius,
    this.boxShadow = const [
      BoxShadow(
        color: Colors.transparent,
        spreadRadius: 1,
        blurRadius: 1,
      )
    ],
    this.curve = Curves.easeInOut,
    required this.frameThickness,
    required this.size,
    required this.child,
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
    // _changeHueAfterReverseAnimation(changeRate: 10,);
    _changeHueOverTime();
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
    Duration duration = const Duration(seconds: 1),
    double changeRate = 1.0,
  }) async {
    _timerHueChanger = Timer.periodic(duration, (timer) {
      for (int i = 0; i < _randomColorPallet.length; i++) {
        final v = _colorHueValue;
        _randomColorPallet[i] =
            changeColorHue(color: _randomColorPallet[i], newHueValue: v);
      }

      _colorHueValue += changeRate;
      print("update value = $_colorHueValue");
    });
  }

  ////* change color: end of reverse
  // _changeHueAfterReverseAnimation({required int changeRate}) {
  //   _blurAnimation.addStatusListener((status) {
  //     if (status == AnimationStatus.forward) {
  //       _colorHueValue += changeRate;
  //       for (int i = 0; i < _randomColorPallet.length; i++) {
  //         _randomColorPallet[i] = changeColorHue(
  //             color: _randomColorPallet[i], newHueValue: _colorHueValue);
  //       }
  //     }
  //   });
  // }

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
            opacity: 1,
            // _animation.value.y.abs(),
            child: backgroundContainer(
              key: ValueKey("BlurBGOnNeonRect border"),
              borderThinckness: 33,
              // _blurAnimation.value / 2,
              width: widget.size.width + widget.frameThickness,
              height: widget.size.height + widget.frameThickness,
            ),
          ),

        ///`background`
        // backgroundContainer(
        //   key: ValueKey("BGOnNeonRect border"),
        //   borderThinckness: widget.frameThickness,
        //   width: widget.size.width + widget.frameThickness,
        //   height: widget.size.height + widget.frameThickness,
        // ),

        ///[child]
        widget.child,
      ],
    );
  }

  Widget backgroundContainer({
    required Key key,
    required double width,
    required double height,
    required double borderThinckness,
  }) {
    return ClipPath(
      clipper: RectClippet(
        borderThinckness: borderThinckness,
      ),
      child: Container(
        key: key,
        width: width,
        height: height,
        decoration: BoxDecoration(
          // borderRadius: widget.borderRadius,
          boxShadow: widget.boxShadow,
          shape: BoxShape.rectangle,
          gradient: LinearGradient(
            // begin: Alignment(
            //   0,
            //   1.0 - _animation.value.y,
            // ),
            // end: Alignment(
            //   _animation.value.x,
            //   _animation.value.y,
            // ),

            ///breakPoints of [LinearGradient] colors
            stops: [.0, .4, .7, 1.0],
            colors: _randomColorPallet,
          ),
        ),
      ),
    );
  }
}
