import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';

class SocialIcons extends StatefulWidget {
  @override
  _SocialIconsState createState() => _SocialIconsState();
}

class _SocialIconsState extends State<SocialIcons> {
  bool _isHoverRow = false;
  double _iconSize = 35;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      onHover: (value) {
        if (value)
          setState(() => _isHoverRow = true);
        else
          setState(() => _isHoverRow = false);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.medium,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.email,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.linkedIn,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.behance,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.insta,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
            SocialIcon(
              size: _iconSize,
              svgPath: AppIcon.twitter,
              onClick: () {},
              isGroupHover: _isHoverRow,
            ),
          ],
        ),
      ),
    );
  }
}

class SocialIcon extends StatefulWidget {
  const SocialIcon({
    Key? key,
    required this.size,
    required this.svgPath,
    required this.onClick,
    required this.isGroupHover,
  }) : super(key: key);

  @override
  _SocialIconState createState() => _SocialIconState();
  final String svgPath;
  final Function onClick;
  final bool isGroupHover;
  final double size;
}

class _SocialIconState extends State<SocialIcon> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (value) {
          if (value)
            setState(() => _isHover = true);
          else
            setState(() => _isHover = false);
        },
        child: Container(
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            width: 2,
            color: _isHover ? Colors.blueAccent : Colors.transparent,
          ))),
          child: SvgPicture.asset(
            widget.svgPath,
            width: widget.size,
            fit: BoxFit.cover,
            color:
                widget.isGroupHover && !_isHover ? Colors.grey : Colors.black,
          ),
        ),
      ),
    );
  }
}
