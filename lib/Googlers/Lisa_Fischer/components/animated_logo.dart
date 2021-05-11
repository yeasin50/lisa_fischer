import 'package:flutter/material.dart';

class AnimatedLogo extends StatefulWidget {
  final double logoWidth;

  const AnimatedLogo({
    Key? key,
    this.logoWidth = 35,
  }) : super(key: key);
  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  final String _personal_monogram = "assets/images/lisa_personal_monogram.png";
  late AnimationController _controller;

  late Animation<double> _animY;
  late Animation<double> _animZ;

  _initAnim() {
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )..addListener(() => setState(() {}))
        // ..repeat()
        ;

    _animY = Tween<double>(begin: 0.0, end: 360.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.decelerate,
        ),
      ),
    );
    _animZ = Tween<double>(begin: 0.0, end: 360).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.bounceInOut,
        ),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initAnim();
  }

  double _magicValue = 0.0174533;

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..rotateY((0 - _animY.value) * _magicValue)
        ..rotateZ((0 - _animZ.value) * _magicValue),
      alignment: FractionalOffset.bottomLeft,
      child: Image.asset(
        _personal_monogram,
        scale: 1,
        fit: BoxFit.fitHeight,
        width: widget.logoWidth,
        height: widget.logoWidth * 1.5,
      ),
    );
  }
}
