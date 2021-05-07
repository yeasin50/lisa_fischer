import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

class UrlNaVigator extends StatefulWidget {
  final Function onClick;
  final String title;

  const UrlNaVigator({
    Key? key,
    required this.onClick,
    required this.title,
  }) : super(key: key);

  @override
  _UrlNaVigatorState createState() => _UrlNaVigatorState();
}

class _UrlNaVigatorState extends State<UrlNaVigator> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = TextStyle(
      /// there is attribute to handle space between underline and text
      /// thats' why we are creating `Shadow as Main text` and setting original text Color to transparent
      shadows: [
        Shadow(
          color: _isHover ? kColorDash : const Color(0xffa8a8a8),
          offset: Offset(0, -4),
        )
      ],
      fontFamily: kFproximaNova,
      fontWeight: FontWeight.w700,
      fontSize: 14.5,
      color: Colors.transparent,
      decoration: TextDecoration.underline,
      decorationColor: _isHover ? Colors.blue : Colors.transparent,
      decorationThickness: _isHover ? 2 : 0.0,
      decorationStyle: TextDecorationStyle.solid,
    );
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          if (value)
            _isHover = true;
          else
            _isHover = false;
        });
      },
      onTap: () => widget.onClick(),
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          widget.title,
          textAlign: TextAlign.left,
          style: _textStyle,
        ),
      ),
    );
  }
}
