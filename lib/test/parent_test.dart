import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/animated_logo.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';

class TestLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: AnimatedLogo()),
      ),
    );
  }
}

class TestBody extends StatefulWidget {
  @override
  _TestBodyState createState() => _TestBodyState();
}

class _TestBodyState extends State<TestBody> with TickerProviderStateMixin {
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
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        width: 100,
        height: 100,
        // color: Colors.blue.withOpacity(.1),
        child: Transform(
          transform: Matrix4.identity()
            ..rotateY((0 - _animY.value) * _magicValue)
            ..rotateZ((0 - _animZ.value) * _magicValue),
          alignment: FractionalOffset.bottomLeft,
          child: LSHeader().buildLogo(
            width: 55,
          ),
        ),
      ),
    );
  }
}
