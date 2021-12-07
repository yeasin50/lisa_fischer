import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:provider/provider.dart';

import '../../../constants/constants.dart';
import '../../../providers/provider.navigator.dart';
import '../utils/utils.dart';

class GridItem extends StatefulWidget {
  const GridItem({
    Key? key,
    required this.imageUrl,
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

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool _isHovered = false;

  ///TODO: change fontstyle
  final TextStyle _titleTextStyle = TextStyle(
    fontFamily: AppTextStyles.fontFamily, // was latif
    fontSize: 28,
    color: Colors.white,
    fontWeight: FontWeight.w600,
    letterSpacing: 1.3,
  );

  ///** Naviagte to another page */
  _navigate(BuildContext context) {
    final pageNotifier = Provider.of<PageNotifier>(context, listen: false);
    final _currentpage = pageNotifier.pageName;

    PageName? pageName;

    //Done:skip nav on Current Index
    if (widget.title == GridItemC.titles[0] &&
        _currentpage != PageName.buy_on_google) {
      // routeName = BuyOnGoolgePage.routeName;
      pageName = PageName.buy_on_google;
    }
    if (widget.title == GridItemC.titles[1] &&
        _currentpage != PageName.loppet_winter_festival) {
      // routeName = LoppetWinterFestivalPage.routeName;
      pageName = PageName.loppet_winter_festival;
    }
    if (widget.title == GridItemC.titles[2] && _currentpage != PageName.visda) {
      // routeName = VisdaPage.routeName;
      pageName = PageName.visda;
    }
    if (widget.title == GridItemC.titles[3] &&
        _currentpage != PageName.leveled) {
      // routeName = LeveledPage.routeName;
      pageName = PageName.leveled;
    }
    if (widget.title == GridItemC.titles[4] &&
        _currentpage != PageName.google_shopping) {
      // routeName = GoogleShpoingPage.routeName;
      pageName = PageName.google_shopping;
    }
    if (widget.title == GridItemC.titles[5] &&
        _currentpage != PageName.bercelona_metro_redesign) {
      // routeName = BercelonaMetroRedesignPage.routeName;
      pageName = PageName.bercelona_metro_redesign;
    }
    if (widget.title == GridItemC.titles[6] && _currentpage != PageName.oro) {
      // routeName = OroPage.routeName;
      pageName = PageName.oro;
    }
    if (widget.title == GridItemC.titles[7] &&
        _currentpage != PageName.thrive) {
      // routeName = ThrivePage.routeName;
      pageName = PageName.thrive;
    }
    if (widget.title == GridItemC.titles[8] &&
        _currentpage != PageName.lucere) {
      // routeName = LucerePage.routeName;
      pageName = PageName.lucere;
    }
    //  else {
    //   // routeName = WorkPage.routename;
    //   pageName = null;
    // }

    if (pageName != null) {
      pageNotifier.changeScreen(pageName: pageName);
    }
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
