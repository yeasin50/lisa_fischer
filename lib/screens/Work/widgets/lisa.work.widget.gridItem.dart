import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/providers/provider.navigator.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.imageUrl,
    required this.onPress,
    required this.title,
    required this.subtitle,
    required this.imgHash,
    required this.width,
  });

  final double width;
  final String title;
  final String subtitle;

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

  ///** Naviagte to another page */
  _navigate(BuildContext context) {
    late PageName? pageName;

    if (widget.title == GridItemC.titles[0]) {
      // routeName = BuyOnGoolgePage.routeName;
      pageName = PageName.buyOnGoogle;
    } else if (widget.title == GridItemC.titles[1]) {
      // routeName = LoppetWinterFestivalPage.routeName;
      pageName = PageName.loppetWinterFestival;
    } else if (widget.title == GridItemC.titles[2]) {
      // routeName = VisdaPage.routeName;
      pageName = PageName.visda;
    } else if (widget.title == GridItemC.titles[3]) {
      // routeName = LeveledPage.routeName;
      pageName = PageName.leveled;
    } else if (widget.title == GridItemC.titles[4]) {
      // routeName = GoogleShpoingPage.routeName;
      pageName = PageName.googleShopping;
    } else if (widget.title == GridItemC.titles[5]) {
      // routeName = BercelonaMetroRedesignPage.routeName;
      pageName = PageName.bercelonaMetroRedesign;
    } else if (widget.title == GridItemC.titles[6]) {
      // routeName = OroPage.routeName;
      pageName = PageName.oro;
    } else if (widget.title == GridItemC.titles[7]) {
      // routeName = ThrivePage.routeName;
      pageName = PageName.thrive;
    } else if (widget.title == GridItemC.titles[8]) {
      // routeName = LucerePage.routeName;
      pageName = PageName.lucere;
    }
    //  else {
    //   // routeName = WorkPage.routename;
    //   pageName = null;
    // }

    Provider.of<PageNotifier>(context, listen: false)
        .changeScreen(pageName: pageName);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: InkWell(
        onTap: () => _navigate(context),
        onHover: (value) {
          // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
          setState(() => _isHovered = value);
          // });
        },
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: BlurHash(
                hash: widget.imgHash,
                image: "${widget.imageUrl}?format=${widget.width}w",
              ),
            ),
            //* InkWell:HoverColor wont effect here
            if (_isHovered)
              Container(
                color: Colors.black.withOpacity(.7),
              ),
            AnimatedAlign(
              duration: Duration(milliseconds: 400),
              alignment: Alignment(-.75, _isHovered ? .7 : 1.5),
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
