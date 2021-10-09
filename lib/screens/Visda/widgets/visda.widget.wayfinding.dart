import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

class P5WayFinding extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P5WayFinding({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  _mwNImage(
    String url, {
    double? width,
  }) =>
      Image.network(
        url,
        width: width ?? maxWidth,
        fit: BoxFit.fitWidth,
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "Wayfinding ",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586745060282-2YYV3ESZI1PV4YR0J21T/visd%40_welcome+sign+_more+horizontal+crop.jpg?format=750w",
        ),

        columnSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _mwNImage(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111218026-2A6RQSIRN7J4JT4GW29H/visd%2540_wayfinding2.jpg?format=500w",
              width: maxWidth * .5 - 10,
            ),
            _mwNImage(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111304207-490L518X8MXMJ4HF178S/visd%2540_wayfinding3.jpg?format=500w",
              width: maxWidth * .5 - 10,
            ),
          ],
        ),
        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586745638782-JKSPXL3EMRRMMF8XFQS6/visd%2540_wayfinding1.jpg?format=750w",
        ),
        columnSpace,
        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586804924546-XGK6W57V7PUF9OJNGVZD/image-asset.png?format=750w",
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        //{ Clipboards + Stickers + Drinks }
        clipBoardsDrinks(),

        columnSpace,

        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111656299-10RX9G24UXD4UMHQTQVK/visd%40_holding+clipboard.jpg?format=500w",
                width: maxWidth * .5 - 10,
                height: maxWidth * .5,
                fit: BoxFit.fitWidth,
              ),
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111692763-PQDTFXA10NOACBEHFDYE/visd%40_holding+stickers.jpg?format=500w",
                width: maxWidth * .5 - 10,
                height: maxWidth * .5,
                fit: BoxFit.fitWidth,
              ),
            ],
          ),

        //* on MobileView { Clipboards + Stickers + Drinks } images will be column's children,
        //* extra `if` avoid using another inner Column,
        if (isMobile)
          Padding(
            padding: EdgeInsets.only(bottom: columnSpace.height!),
            child: _mwNImage(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111656299-10RX9G24UXD4UMHQTQVK/visd%40_holding+clipboard.jpg?format=500w",
            ),
          ),
        if (isMobile)
          _mwNImage(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111692763-PQDTFXA10NOACBEHFDYE/visd%40_holding+stickers.jpg?format=500w"),

        columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586112138309-3NI0ZRRW0WY1ROZ90Y5S/visd%40_ice+sculpture.jpg?format=750w",
          width: maxWidth,
          height: maxWidth * .7,
          fit: BoxFit.fitWidth,
        ),
        columnSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///CHEERS TO CREATIVITY
            cheer2Creativity(),
            FadeInImage.assetNetwork(
              placeholder: placeHolderImagePath,
              width: maxWidth * .5,
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586112099055-C95G3YLZMV5XMPUDT0RL/visd%40_cocktails.jpg?format=750w",
            ),
          ],
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586153019232-HLQRHY905V9TURS1WAFK/squarespace+banner+square_animated.gif?format=750w",
          width: maxWidth,
          height: maxWidth * .2,
          fit: BoxFit.fitWidth,
        ),
        columnSpace,

        ///TODO::Rive anime
        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586804956337-80JYKX9L21T22LL8WS2M/image-asset.png",
        ),
      ],
    );
  }

  Text clipBoardsDrinks() {
    return Text.rich(
      TextSpan(
        style: MyTextStyles().textParan20,
        children: [
          TextSpan(
            text: "{ ",
            style: MyTextStyles().textParan20.copyWith(
                  color: kColorDash,
                ),
          ),
          TextSpan(
            text: "Clipboards",
          ),
          TextSpan(
            text: " + ",
            style: MyTextStyles().textParan20.copyWith(
                  color: kColorDash,
                ),
          ),
          TextSpan(
            text: "Stickers",
          ),
          TextSpan(
            text: " + ",
            style: MyTextStyles().textParan20.copyWith(
                  color: kColorDash,
                ),
          ),
          TextSpan(
            text: "Drinks ",
          ),
          TextSpan(
            text: " }",
            style: MyTextStyles().textParan20.copyWith(
                  color: kColorDash,
                ),
          ),
        ],
      ),
    );
  }

  Container cheer2Creativity() {
    return Container(
      width: maxWidth * .45,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          columnSpace,
          Text(
            "CHEERS TO CREATIVITY\n",
            style: MyTextStyles().normatText.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                ),
          ),
          greenColorLine,
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text:
                    "\nThe day wrapped up in celebration of design & new friendships with flavorful 'VisD@' cocktails. 🍸🍸",
                style: MyTextStyles().sub26.copyWith(
                      color: Colors.black,
                    ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
