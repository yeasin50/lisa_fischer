import 'package:flutter/material.dart';

///This will be use as Rectframe, A little [Animation] of [Colors]
///this is repeated Animation using 4 colors.

class NeonRectBG extends StatefulWidget {
  ///Duration of animation default=`Duration(seconds: 3)`
  final Duration duration;

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
  final colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  List<Color> _colors = [
    Color.fromRGBO(85, 255, 225, 1),
    Color.fromRGBO(175, 61, 255, 1),
    Color.fromRGBO(255, 59, 148, 1),
    Color.fromRGBO(166, 253, 41, 1),
  ];

  late Animation _animation;
  late AnimationController _controller;

  ///`Engine`
  _initRect() {
    _controller = new AnimationController(
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

    _controller.repeat(reverse: true);
  }

  @override
  void initState() {
    super.initState();
    _initRect();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ///`background`
        Container(
          width: widget.size.width + widget.frameThickness,
          height: widget.size.height + widget.frameThickness,
          decoration: BoxDecoration(
            boxShadow: widget.boxShadow,
            shape: BoxShape.rectangle,
            gradient: LinearGradient(
              begin: Alignment(
                0,
                1.0 - _animation.value.y,
              ),
              end: Alignment(
                _animation.value.x,
                _animation.value.y,
              ),

              ///breakPoints of [LinearGradient] colors
              stops: [
                .0,
                .4,
                .7,
                1.0,
              ],
              colors: _colors,
            ),
          ),
        ),

        ///[child]
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: widget.size.height,
            maxWidth: widget.size.width,
          ),
          child: widget.child,
        ),
      ],
    );
  }
}
