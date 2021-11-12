import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

/// ShowCase images + row items of `Date Role Press Links`
class P2ShowCase extends StatefulWidget {
  final double maxWidth;
  final bool isMobile;

  const P2ShowCase({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  @override
  _P2ShowCaseState createState() => _P2ShowCaseState();
}

class _P2ShowCaseState extends State<P2ShowCase> {
  // bool _startShowCaseAnim = false;

  ///there are total 8 links on row , is there any better way to handle this 🤔
  List<bool> _hoverItems = List.generate(8, (index) => false);

  /// Press and Links +> Hover Text Effect
  _textStyle(bool _isHover) {
    if (_isHover)
      return AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
        color: kColorDash,
      );
    else
      return AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
      );
  }

  /// Gshop Logo Aniamtion
  double _opacityLevelLogo = 0.0;

  /// top padding to view Animation of ShowCase
  double _paddingTopLevel = 40.0;

  /// init ShowCase Opacity
  double _showcaseOpacity = 0;

  List<Padding> _rowItemsMobile() {
    List<Padding> _items = [];

    buyOnGoogleRowitems.forEach((key, value) {
      _items.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: RowItem(
            title: "$key",
            body: value,
            isMobile: true,
          ),
        ),
      );
    });

    return _items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        columnSpace,
        // GShop Logo
        VisibilityDetector(
          key: Key("GshopLogoOpacity"),
          onVisibilityChanged: (info) {
            //single Time animation
            if (info.visibleFraction > .8 && _opacityLevelLogo == 0.0) {
              setState(() => _opacityLevelLogo = 1.0);
            }
          },
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeInCirc,
            opacity: _opacityLevelLogo,
            child: mwBHImage(
              hash: gshopLogoImage.hash,
              imageUrl: gshopLogoImage.imageUrl,
              width: 750,
              aspectR: 750 / 396,
            ),
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        if (!widget.isMobile) rowItems(widget.maxWidth),

        if (widget.isMobile) ..._rowItemsMobile(),
        SizedBox(
          height: columnSpace.height! * 3,
        ),

        //*  Show Gshop showCase while widget Visibility=50%
        VisibilityDetector(
          onVisibilityChanged: (info) {
            // we are just animating once
            // print("frac: ${info.visibleFraction} ");
            if (info.visibleFraction > .5)
              setState(() {
                _paddingTopLevel = 0;
                _showcaseOpacity = 1.0;
              });
          },
          key: Key("showCaseImage"),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: widget.maxWidth,
            curve: Curves.easeInCubic,
            padding: EdgeInsets.only(top: _paddingTopLevel),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 400),
              opacity: _showcaseOpacity,
              child: mwBHImage(
                imageUrl: gshopShowCase.imageUrl,
                hash: gshopShowCase.hash,
                width: widget.maxWidth,
                //* may dirty way to handle it
                aspectR: widget.maxWidth / (widget.maxWidth * (448 / 1096)),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }

  /// row items of `Date Role Press Links`
  Row rowItems(double maxWidth) {
    final double _width = maxWidth / 4;
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowItem(
          width: _width,
          title: "DATE",
          body: Text(
            "March 2018- April 2019",
            style: AppTextStyles.normal,
          ),
        ),
        RowItem(
          width: _width,
          title: "ROLE",
          body: Text(
            "Visual + UX Designer / Brand Strategist",
            style: AppTextStyles.normal,
          ),
        ),
        RowItem(
          width: _width,
          title: "PRESS",
          body: RichText(
            text: TextSpan(
              // style: MyTextStyles().normatText.copyWith(
              //       fontWeight: FontWeight.w500,
              //     ),
              children: [
                TextSpan(
                  text: "AdWeek, ",
                  style: _textStyle(_hoverItems[0]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[0] = true),
                  onExit: (event) => setState(() => _hoverItems[0] = false),
                ),
                TextSpan(
                  text: "TechCrunch, ",
                  style: _textStyle(_hoverItems[1]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://techcrunch.com/2019/10/03/redesigned-google-shopping-goes-live-with-price-tracking-google-lens-for-outfits-and-more/",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[1] = true),
                  onExit: (event) => setState(() => _hoverItems[1] = false),
                ),
                TextSpan(
                  text: "Verge, ",
                  style: _textStyle(_hoverItems[2]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://www.theverge.com/2019/10/3/20897652/google-shopping-redesign-price-tracking-personalized-homepage-lens-express",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[2] = true),
                  onExit: (event) => setState(() => _hoverItems[2] = false),
                ),
                TextSpan(
                  text: "Engadget, ",
                  style: _textStyle(_hoverItems[3]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://www.engadget.com/2019-10-03-google-shopping-product-price-tracking.html",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[3] = true),
                  onExit: (event) => setState(() => _hoverItems[3] = false),
                ),
                TextSpan(
                  text: "Search Engine Land",
                  style: _textStyle(_hoverItems[4]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://searchengineland.com/googles-new-take-on-shopping-goes-live-in-u-s-322891",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[4] = true),
                  onExit: (event) => setState(() => _hoverItems[4] = false),
                ),
              ],
            ),
          ),
        ),

        ///"About Google Shopping, Google Blog, Google Shopping Actions",
        RowItem(
          width: _width,
          title: "LINKS",
          body: RichText(
            text: TextSpan(
              style: AppTextStyles.normal.copyWith(
                fontWeight: FontWeight.w500,
              ),
              children: [
                TextSpan(
                  text: "About Google Shopping, ",
                  style: _textStyle(_hoverItems[5]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://shopping.google.com/u/0/about",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[5] = true),
                  onExit: (event) => setState(() => _hoverItems[5] = false),
                ),
                TextSpan(
                  text: "Google Blog, ",
                  style: _textStyle(_hoverItems[6]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://www.blog.google/products/shopping/find-best-prices-and-places-buy-google-shopping/",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[6] = true),
                  onExit: (event) => setState(() => _hoverItems[6] = false),
                ),
                TextSpan(
                  text: "Google Shopping Actions",
                  style: _textStyle(_hoverItems[7]),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                          "https://www.google.com/retail/solutions/shopping-actions/",
                        ),
                  onEnter: (event) => setState(() => _hoverItems[7] = true),
                  onExit: (event) => setState(() => _hoverItems[7] = false),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
