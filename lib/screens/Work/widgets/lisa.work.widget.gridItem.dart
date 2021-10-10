import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.width,
    required this.imageUrl,
    required this.onPress,
    required this.title,
    required this.subtitle,
    required this.imgHash,
  });
  final String title;
  final String subtitle;
  final double width;

  final String imageUrl;
  final String imgHash;
  final Function onPress;

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool _isHovered = false;

  ///TODO: change fontstyle
  final TextStyle _titleTextStyle = GoogleFonts.lateef(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.3,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.width,
      width: widget.width,
      child: InkWell(
        onTap: () {
          print("clicked: ${widget.imageUrl}");
        },
        onHover: (value) {
          WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
            setState(() => _isHovered = value);
          });
        },
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: BlurHash(
                hash: widget.imgHash,
                image: widget.imageUrl,
              ),
            ),
            //* InkWell:HoverColor wont effect here
            if (_isHovered)
              Container(
                color: Colors.black.withOpacity(.7),
              ),
            AnimatedAlign(
              duration: Duration(milliseconds: 600),
              alignment: Alignment(-.75, _isHovered ? .7 : 2),
              // curve: Curves.decelerate,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: _titleTextStyle,
                    textAlign: TextAlign.left,
                  ),

                  /// divColor
                  Container(
                    width: 30,
                    height: 3,
                    color: Colors.green,
                    padding: EdgeInsets.symmetric(vertical: 4),
                  ),
                  Text(
                    widget.subtitle,
                    textAlign: TextAlign.left,
                    style: _titleTextStyle.copyWith(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
