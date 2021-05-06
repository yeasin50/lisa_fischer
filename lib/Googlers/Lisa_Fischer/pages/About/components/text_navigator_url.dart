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
      shadows: [
        Shadow(
          color: _isHover ? kColorDash : Colors.black,
          offset: Offset(0, -5),
        )
      ],
      color: Colors.transparent,
      decoration: TextDecoration.underline,
      decorationColor: _isHover ? Colors.blue : Colors.transparent,
      decorationThickness: 2,
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
          textAlign: TextAlign.center,
          style: _textStyle,
        ),
      ),
    );
  }
}
