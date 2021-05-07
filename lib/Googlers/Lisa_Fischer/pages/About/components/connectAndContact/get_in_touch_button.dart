import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

class GetInTouch extends StatefulWidget {
  @override
  _GetInTouchState createState() => _GetInTouchState();
}

class _GetInTouchState extends State<GetInTouch> {
  final TextStyle _style = TextStyle(
    fontFamily: kFproximaNova,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.4,
  );

  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ///nav to Contact Page
      },
      onHover: (value) {
        if (value)
          setState(() => _isHover = true);
        else
          setState(() => _isHover = false);
      },
      child: Container(
        padding: const EdgeInsets.all(13),
        color: _isHover ? kColorDash : Colors.black,
        child: Text(
          "GET IN TOUCH",
          style: _style,
        ),
      ),
    );
  }
}
