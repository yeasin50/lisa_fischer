import 'package:flutter/material.dart';

/// [wave hand default 👋]
class WavingWidget extends StatefulWidget {
  final Widget child;
  final int durationInSec;
  final double startAngle;
  final double endAngle;
  final Curve curve;

  const WavingWidget(
      {Key? key,
      this.durationInSec = 1,
      this.startAngle = 0.0,
      this.endAngle = 30.0,
      this.curve = Curves.easeInOut,
      required this.child})
      : super(key: key);

  @override
  _WavingWidgetState createState() => _WavingWidgetState();
}

class _WavingWidgetState extends State<WavingWidget>
    with SingleTickerProviderStateMixin {
  final double _magicValue = 0.0174533;

  late Animation<double> _animWave;
  late AnimationController _waveController;

  _initWave() {
    _waveController = new AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.durationInSec),
    )..addListener(() => setState(() {}));

    /// wave 👋 hand
    _animWave =
        Tween<double>(begin: widget.startAngle, end: widget.endAngle).animate(
      CurvedAnimation(
        parent: _waveController,
        curve: Interval(
          0.0,
          1.0,
          curve: widget.curve,
        ),
      ),
    );

    _waveController.repeat(reverse: true);
  }

  @override
  void initState() {
    super.initState();
    _initWave();
  }

  @override
  void dispose() {
    _waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      alignment: FractionalOffset.bottomRight,
      angle: _animWave.value * _magicValue,
      child: widget.child,
    );
  }
}
