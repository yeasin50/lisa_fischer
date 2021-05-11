import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/animated_logo.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/wave_animation.dart';

class TestLab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(child: TestBody()),
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
  late AnimationController _waveController;
  late Animation<double> _animX;
  late Animation<double> _animY;
  late Animation<double> _animZ;
  late Animation<double> _animWave;

  _initAnim() {
    _controller = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )
      ..addListener(() => setState(() {}))
      ..repeat();

    /// bounceInOut for [Get In Touch]=> [Contact page]
    _animX = Tween<double>(begin: 4.0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.bounceInOut,
        ),
      ),
    );
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

    // _controller.forward();
  }

  _initWave() {
    _waveController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    )..addListener(() => setState(() {}));

    /// wave 👋 hand
    _animWave = Tween<double>(begin: 0, end: 30).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.easeInOut,
        ),
      ),
    );

    _waveController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();

    _waveController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // _initAnim();
    _initWave();
  }

  double _magicValue = 0.0174533;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
          width: 100,
          height: 100,
          // color: Colors.blue.withOpacity(.1),
          child: WavingWidget(
            child: Text(
              "👋",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          )),
    );
  }

  Transform buildTransformLogo() {
    return Transform(
      transform: Matrix4.identity()..setEntry(0, 0, _animX.value),
      alignment: FractionalOffset.centerLeft,
      child: LSHeader().buildLogo(
        width: 55,
      ),
    );
  }
}
