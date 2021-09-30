import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class ImagesWithDetails extends StatelessWidget {
  const ImagesWithDetails({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  final BoxConstraints constraints;

  assetImage(String path) => Image.asset(
        "images/lucere/$path",
        width: constraints.maxWidth,
        fit: BoxFit.fitWidth,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          ///GIF
          AspectRatio(
            aspectRatio: 1000 / 500,
            child: BlurHash(
              hash:
                  "iJR{rhxbNFtQR+ozt7nOaK_4RjxufiogofV@jbj]tlocRjWFjXV@bIbbbbt8WBWAWCjYf6ahkBkCVskCt7oca~kBj=aejF",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490596469606-9S61D9ZTCJZTSJE7FQXI/image-asset.gif?format=1000w",
            ),
          ),

          assetImage("p1_allegren.jpeg"),
          assetImage("p2_lucere_app_in_context.jpg"),
          assetImage("p3_phones_in_line_triangle2.jpg"),
          assetImage("p4_phones_in_line_triangle.jpg"),
          assetImage("p5_image_asset.jpeg"),
          assetImage("p6_2fruit_and_turkey_on_angle2.jpg"),
          assetImage("p7_image_asset.jpeg"),
          assetImage("p8_image_asset.jpeg"),
          assetImage("p9_image_asset.jpeg"),
          assetImage("p10_6holding_menuAnd_bag_shadow.jpg"),
          assetImage('p11_image_asset.jpeg'),
          assetImage('p12_imageAsset.jpeg'),
          assetImage('p13_image_asset.jpeg'),
        ].map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: e,
          ),
        ),
      ],
    );
  }
}
