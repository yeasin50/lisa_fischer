import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.constants.dart';

class CustomButton extends StatefulWidget {
  final Function onTap;
  final String label;

  CustomButton({Key? key, required this.onTap, required this.label})
      : super(key: key);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
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
      onTap: () => widget.onTap(),
      onHover: (value) {
        if (value)
          setState(() => _isHover = true);
        else
          setState(() => _isHover = false);
      },
      child: Container(
        width: 150,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(13),
        color: _isHover ? kColorDash : Colors.black,
        child: Text(
          widget.label,
          style: _style,
        ),
      ),
    );
  }
}
