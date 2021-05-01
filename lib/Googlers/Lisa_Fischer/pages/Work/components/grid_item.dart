import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.imageUrl,
    required this.onPress,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  final String imageUrl;
  final Function onPress;

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool _isHover = false;

  final double _containerW = 400;

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
      height: _containerW,
      width: _containerW,
      child: InkWell(
        onTap: () {
          print("clicked: ${widget.imageUrl}");
        },
        onHover: (value) {
          if (value) {
            setState(() => _isHover = true);
            Future.delayed(Duration(milliseconds: 100), () {
              setState(() => _bottomPadding = 50);
            });
          } else
            setState(() {
              _isHover = false;
              _bottomPadding = 20;
            });
        },
        child: Stack(
          children: [
            FadeInImage.assetNetwork(
              placeholder: "assets/images/placeHolder.png",
              image: widget.imageUrl,
              fit: BoxFit.cover,
            ),

            /// a little pushUp and itemPopUp from bottom
            /// we can increase bottom margin 😂
            if (_isHover)
              AnimatedContainer(
                duration: Duration(milliseconds: 600),
                padding: EdgeInsets.only(bottom: _bottomPadding),
                width: _containerW,
                height: _containerW,
                alignment: Alignment(0, 1),
                curve: Curves.easeOutExpo,
                color: Colors.black.withOpacity(.65),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: _titleTextStyle,
                    ),
                    Text("div"),
                    Text(
                      widget.subtitle,
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
