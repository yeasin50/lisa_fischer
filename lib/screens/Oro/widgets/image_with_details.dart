import 'package:flutter/material.dart';
import 'package:portfolio/screens/Oro/utils/utils.dart';

import '../../../utils/blurHashImageTemplate.dart';
import '../utils/hashImageData.dart';
import 'widgets.dart';

class ImagesWithDetails extends StatelessWidget {
  const ImagesWithDetails({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          mwBHImage(
            hash: oroUpdateContecptVisual(width: maxWidth).hash,
            imageUrl: oroUpdateContecptVisual(width: maxWidth).imageUrl,
            aspectR: 1500 / 4820,
          ),
          mwBHImage(
            hash: oroImageAssetGif(width: maxWidth).hash,
            imageUrl: oroImageAssetGif(width: maxWidth).imageUrl,
            aspectR: 600 / 361,
          ),

          /// oro plane
          Image.asset(
            "images/oro/p1.jpeg",
            fit: BoxFit.cover,
            width: maxWidth,
            height: maxWidth * .75,
          ),

          /// person3x // TODO: make this class as loader and show loading icon on screen util it finish the image(<500kb)s loading, for large image use blurhas
          Image.network("${OroImageHelper.person3x}?format=${maxWidth}w"),

          Image.asset(
            "images/oro/ORO_BOARDING_PASSES_ISOMETRIC.jpg",
            fit: BoxFit.cover,
            width: maxWidth,
            height: maxWidth * .75,
          ),

          /// tickets
          Image.network(
              "${OroImageHelper.tickerOverView6}?format=${maxWidth}w"),

          //* animated images (tickets🤔) // height commented 😂
          Image2xAnimation(
            fontImagePath: 'images/oro/ticket2.jpg',
            backImagePath: 'images/oro/ticket2_x.jpg',
            imageSize: Size(
              maxWidth,
              maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath:
                'images/oro/ORO_PRINTBOARDINGPASS_UPDATED_Page_5.jpg',
            backImagePath:
                'images/oro/ORO_PRINTBOARDINGPASS_UPDATED_Page_6.jpg',
            imageSize: Size(
              maxWidth,
              maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath: 'images/oro/ticket3.jpg',
            backImagePath: 'images/oro/ticket3_x.jpg',
            imageSize: Size(
              maxWidth,
              maxWidth,
            ),
          ),

          Image2xAnimation(
            fontImagePath: 'images/oro/ticket4.jpg',
            backImagePath: 'images/oro/ticket4_x.jpg',
            imageSize: Size(
              maxWidth,
              maxWidth,
            ),
          ),

          //* giffy  website preview
          mwBHImage(
            hash: websitePreview(width: maxWidth).hash,
            imageUrl: websitePreview(width: maxWidth).imageUrl,
            aspectR: 500 / 336,
          ),

          //* On phone , covering with looks kinda o.0
          Container(
            width: maxWidth,
            height: maxWidth * .6,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: Color.fromRGBO(188, 150, 4, 1),
              ),
              color: Color.fromRGBO(188, 150, 4, 1),
            ),
            child: mwBHImage(
              hash: phonePreview(width: maxWidth).hash,
              imageUrl: phonePreview(width: maxWidth).imageUrl,
              aspectR: 86 / 120,
              fit: BoxFit.fitHeight,
            ),
          ),

          Image.network("${OroImageHelper.appUI_1}?format=${maxWidth}w"),

          Image.network("${OroImageHelper.appUI_2}?format=${maxWidth}w"),

          Image.network("${OroImageHelper.oroLogo}?format=${maxWidth}w"),
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
