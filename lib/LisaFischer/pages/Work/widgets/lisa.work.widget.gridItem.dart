import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.width,
    required this.imageUrl,
    required this.onPress,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;
  final double width;

  final String imageUrl;
  final Function onPress;

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool _isHover = false;

  double _bottomPadding = 20;

  final TextStyle _titleTextStyle = GoogleFonts.lateef(
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.3,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.width,
      width: widget.width,
      child: InkWell(
        onTap: () {
          print("clicked: ${widget.imageUrl}");
        },
        onHover: (value) {
          if (value) {
            setState(() => _isHover = true);
            Future.delayed(Duration(milliseconds: 100), () {
              setState(() => _bottomPadding = 25);
            });
          } else
            setState(() {
              _isHover = false;
              _bottomPadding = 0;
            });
        },
        child: Stack(
          children: [
            FadeInImage.assetNetwork(
                placeholder: "assets/images/placeHolder.png",
                image: widget.imageUrl,
                fit: BoxFit.fill,
                width: widget.width),

            /// a little pushUp and itemPopUp from bottom
            /// we can increase bottom margin 😂
            if (_isHover)
            AnimatedContainer(
              duration: Duration(milliseconds: 600),
              padding: EdgeInsets.only(bottom: _bottomPadding),
              width: widget.width * .9,
              alignment: Alignment(-.75, .7),
              curve: Curves.decelerate,
              color: Colors.black.withOpacity(.65),
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
