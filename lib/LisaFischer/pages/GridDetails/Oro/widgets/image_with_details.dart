import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import 'image_transaction.dart';

class ImagesWithDetails extends StatelessWidget {
  const ImagesWithDetails({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          AspectRatio(
            aspectRatio: 1500 / 4820,
            child: BlurHash(
              hash:
                  "|tIhQwWXWYj[axa}bHj[j??vazs:j[jsazj[j[ayxZj@R,azayj@a}azf6b_oKoea|f6j@j[a|fQ~qj@bIfRayj@j[fRjt?bazoej@f6azj[j[ayaJWWWCj@ayazfQjtayD%azayfQjtazfQfPj[R-oKj[azj[j@fQazj[",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490566448976-Q19JJOBOHAP9V9T0TVWP/ORO+updated_concept+visuals2-12.jpg?format=500w",
            ),
          ),

          AspectRatio(
            aspectRatio: 600 / 361,
            child: BlurHash(
              hash:
                  "|67m[~of0AWB~4oLEQaz\$~RiayWBj[j[ayayj[j[0nay~7j[Irj[NJay\$zWVj[oLayj@ayazj[j?\$|ayR+azEQay^foK5Bj[ayj[fQazfRoJfPWCE5j[\$~jtt4jtE5WV-lWXayoJj[ayfQa#ayj[^fjt9xfkxYfQoJj@R+",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490567298867-SNNAMVF3XV4HGGI1GMLC/image-asset.gif?format=500w",
            ),
          ),

          /// oro plane
          Image.asset(
            "images/oro/p1.jpeg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          /// person3x
          Image.asset(
            "images/oro/p2.jpg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          Image.asset(
            "images/oro/ORO_BOARDING_PASSES_ISOMETRIC.jpg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          /// tickets
          Image.asset(
            "images/oro/p3.jpeg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          //* animated images (tickets🤔) // height commented 😂
          Image2xAnimation(
            fontImagePath: 'images/oro/ticket2.jpg',
            backImagePath: 'images/oro/ticket2_x.jpg',
            imageSize: Size(
              constraints.maxWidth,
              constraints.maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath:
                'images/oro/ORO_PRINTBOARDINGPASS_UPDATED_Page_5.jpg',
            backImagePath:
                'images/oro/ORO_PRINTBOARDINGPASS_UPDATED_Page_6.jpg',
            imageSize: Size(
              constraints.maxWidth,
              constraints.maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath: 'images/oro/ticket3.jpg',
            backImagePath: 'images/oro/ticket3_x.jpg',
            imageSize: Size(
              constraints.maxWidth,
              constraints.maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath: 'images/oro/ticket4.jpg',
            backImagePath: 'images/oro/ticket4_x.jpg',
            imageSize: Size(
              constraints.maxWidth,
              constraints.maxWidth,
            ),
          ),

          /// giffy  website preview
          AspectRatio(
            aspectRatio: 500 / 336,
            child: BlurHash(
              hash:
                  "|KJt65WB=Bt6-Pt6xVWBbdT1WVjEj[ngoeogWVj[~4oeIrWCNLWCR+oeoLxWoeWEWCWXWCjYoef6R3f7tSfkkCfPWYj[WAI8WVxuoetSj@RjazR*Vqayo\$oLaef6flazadxWayayj[WYj[WBazj[R+fQoeazayj[j[aya#",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490567779061-Q2ZIM2S1XPZKYQ9WI9PD/image-asset.gif?format=500w",
            ),
          ),

          ///On phone
          Container(
            constraints: BoxConstraints(maxHeight: constraints.maxHeight * .6),
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: Color.fromRGBO(188, 150, 4, 1),
              ),
              color: Color.fromRGBO(188, 150, 4, 1),
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: constraints.maxHeight * .6,
                // maxWidth: constraints.maxWidth * .3,
              ),
              child: AspectRatio(
                aspectRatio: 5 / 5,
                child: BlurHash(
                  hash:
                      "nRJjw~bI}hodRNt7fQaxfQax~Vj[9GaybJt7fQaejtWW\$xjtNIaykDxajtRkazoL",
                  image:
                      // "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490567779061-Q2ZIM2S1XPZKYQ9WI9PD/image-asset.gif?format=500w",
                      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490567863238-DAT4130LOY6JBJVCNUBF/image-asset.gif?format=500w",
                  imageFit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),

          Image.asset(
            "images/oro/app_ui.jpeg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          Image.asset(
            "images/oro/app_ui2.jpeg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),

          Image.asset(
            "images/oro/oro_logo.jpeg",
            fit: BoxFit.cover,
            width: constraints.maxWidth,
            height: constraints.maxWidth * .75,
          ),
        ].map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: e,
          ),
        )
      ],
    );
  }
}
