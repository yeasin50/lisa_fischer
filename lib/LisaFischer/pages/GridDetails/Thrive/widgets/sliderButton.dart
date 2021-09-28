import 'package:flutter/material.dart';

class RoundButton extends StatefulWidget {
  final double height;
  final Function onTap;
  final Widget child;

  const RoundButton({
    Key? key,
    required this.height,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  State<RoundButton> createState() => _RoundButtonState();
}

class _RoundButtonState extends State<RoundButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: CircleBorder(),
      onHover: (value) {
        _isHover = value;
      },
      onTap: () => widget.onTap(),
      child: Container(
        height: widget.height,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: _isHover ? Colors.white70 : Colors.grey.withOpacity(.6),
          shape: BoxShape.circle,
        ),
        child: widget.child,
      ),
    );
  }
}
