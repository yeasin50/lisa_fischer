import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P5WayFinding extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P5WayFinding({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  AspectRatio _mWBHImage({required String hash, required String image}) {
    return AspectRatio(
      aspectRatio: 750 / 483,
      child: BlurHash(
        hash: hash,
        image: image,
        imageFit: BoxFit.cover,
      ),
    );
  }

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
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,

        _mWBHImage(
          hash: welcomeSign.hash,
          image: welcomeSign.imageUrl,
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

        _mWBHImage(
          hash: wayfinding1.hash,
          image: wayfinding1.imageUrl,
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

        if (!isMobile) ...[
          columnSpace,
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
          columnSpace,
          _mWBHImage(
            hash: iceSculpture.hash,
            image: iceSculpture.imageUrl,
          ),
        ],

        //* on MobileView { Clipboards + Stickers + Drinks } images will be column's children,
        //* extra `if` avoid using another inner Column,
        if (isMobile)
          ...[
            _mwNImage(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111656299-10RX9G24UXD4UMHQTQVK/visd%40_holding+clipboard.jpg?format=500w",
            ),
            _mwNImage(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111692763-PQDTFXA10NOACBEHFDYE/visd%40_holding+stickers.jpg?format=500w"),
            AspectRatio(
              aspectRatio: maxWidth / (maxWidth * .7),
              child: BlurHash(
                hash: iceSculpture.hash,
                image: iceSculpture.imageUrl,
                imageFit: BoxFit.cover,
              ),
            ),
          ].map(
            (_mwNImage) => Padding(
              padding: EdgeInsets.only(
                top: columnSpace.height!,
              ),
              child: _mwNImage,
            ),
          ),

        columnSpace,

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///CHEERS TO CREATIVITY
            cheer2Creativity(),

            SizedBox(
              width: maxWidth * .5,
              child:
                  _mWBHImage(hash: cocktails.hash, image: cocktails.imageUrl),
            )
          ],
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        AspectRatio(
          aspectRatio: maxWidth / (maxWidth * .2),
          child: BlurHash(
            hash: squareAnimatedBanner.hash,
            image: squareAnimatedBanner.imageUrl,
            imageFit: BoxFit.fitWidth,
          ),
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
        style: AppTextStyles.textParan20,
        children: [
          TextSpan(
            text: "{ ",
            style: AppTextStyles.textParan20.copyWith(
              color: kColorDash,
            ),
          ),
          TextSpan(
            text: "Clipboards",
          ),
          TextSpan(
            text: " + ",
            style: AppTextStyles.textParan20.copyWith(
              color: kColorDash,
            ),
          ),
          TextSpan(
            text: "Stickers",
          ),
          TextSpan(
            text: " + ",
            style: AppTextStyles.textParan20.copyWith(
              color: kColorDash,
            ),
          ),
          TextSpan(
            text: "Drinks ",
          ),
          TextSpan(
            text: " }",
            style: AppTextStyles.textParan20.copyWith(
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
            style: AppTextStyles.normal.copyWith(
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
                style: AppTextStyles.sub26.copyWith(
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
