import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/const.enum.pagesName.dart';
import '../providers/provider.navigator.dart';

enum AnimationType {
  rotate,
  scaleX,
}

class AnimatedLogo extends StatefulWidget {
  final double logoWidth;
  final AnimationType animType;

  const AnimatedLogo({
    Key? key,
    this.logoWidth = 44,
    this.animType = AnimationType.scaleX,
  }) : super(key: key);
  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  final String personalMonogram = "assets/images/lisa_personal_monogram.png";
  late AnimationController _controller;

  late Animation<double> _animX;
  late Animation<double> _animY;
  late Animation<double> _animZ;

  _animationDuration() {
    /// set `animation controller duration`
    if (widget.animType == AnimationType.rotate)
      return Duration(seconds: 1);
    else
      return Duration(seconds: 1);
  }

  _initAnim() {
    _controller = new AnimationController(
      vsync: this,
      duration: _animationDuration(),
    )..addListener(() => setState(() {}))
        // ..repeat()
        ;

    /// bounceInOut for [Get In Touch]=> [Contact page]
    _animX = Tween<double>(begin: 3.5, end: 1).animate(
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

    /// little delay to load the page
    if (widget.animType == AnimationType.rotate)
      Future.delayed(Duration(seconds: 1), () => _controller.forward());
    else
      _controller.forward();
  }

  @override
  void dispose() {
    _controller.removeListener(() {});
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
    return Consumer<PageNotifier>(
      builder: (context, value, child) {
        PageName? pageName = value.pageName;

        if (pageName == null || pageName == PageName.about) {
          return _rotateAnimation();
        } else if (pageName == PageName.contact) {
          return _transformScaleX();
        } else

          ///TODO:: add more animation
          return _buildImage();
      },
    );
  }

  Transform _transformScaleX() {
    /// bounce/ scaleX for [Contact] page
    return Transform(
      transform: Matrix4.identity()..setEntry(0, 0, _animX.value),
      alignment: FractionalOffset.centerLeft,
      child: _buildImage(),
    );
  }

  Transform _rotateAnimation() {
    /// rotate animation for [Work] page
    return Transform(
      transform: Matrix4.identity()
        ..rotateY((0 - _animY.value) * _magicValue)
        ..rotateZ((0 - _animZ.value) * _magicValue),
      alignment: FractionalOffset.bottomLeft,
      child: _buildImage(),
    );
  }

  Image _buildImage() {
    return Image.asset(
      personalMonogram,
      scale: 1,
      fit: BoxFit.fitHeight,
      width: widget.logoWidth,
      height: widget.logoWidth * 1.5,
    );
  }
}
