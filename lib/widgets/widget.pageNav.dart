import 'package:flutter/material.dart';

import '../constants/constants.dart';


class PageNavigator extends StatefulWidget {
  final String title;
  final Function onClick;
  final bool isActive;
  const PageNavigator(
      {Key? key,
      required this.title,
      required this.isActive,
      required this.onClick})
      : super(key: key);

  @override
  _PageNavigatorState createState() => _PageNavigatorState();
}

class _PageNavigatorState extends State<PageNavigator> {
  bool _isHover = false;
  double _fontSize = 22;

  @override
  Widget build(BuildContext context) {
    _fontSize = Theme.of(context).textTheme.bodyText1!.fontSize!;
    final TextStyle _textStyle = TextStyle(
      fontFamily: AppTextStyles.fontFamily,//TODO: was habibi 🤨
      fontSize: _fontSize,
      color: _isHover
          ? Colors.green
          : widget.isActive
              ? Colors.black
              : Colors.grey,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.3,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
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
        child: Text(
          widget.title,
          style: _textStyle,
        ),
      ),
    );
  }
}
