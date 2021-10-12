import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomButton extends StatefulWidget {
  final Function onTap;
  final String label;
  final Size size;

  CustomButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.size = const Size(150, 45),
  }) : super(key: key);
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => widget.onTap(),
        onHover: (value) {
          if (value)
            setState(() => _isHover = true);
          else
            setState(() => _isHover = false);
        },
        child: Container(
          width: widget.size.width,
          height: widget.size.height,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(13),
          color: _isHover ? kColorDash : Colors.black,
          child: Text(
            widget.label,
            style: AppTextStyles.customButton,
          ),
        ),
      ),
    );
  }
}
