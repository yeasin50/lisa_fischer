import 'package:flutter/material.dart';

import '../../../utils/blurHashImageTemplate.dart';
import '../utils/utils.dart';
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
            hash: oroUpdateContecptVisual.hash,
            imageUrl: oroUpdateContecptVisual.imageUrl,
            width: maxWidth,
            aspectR: 1500 / 4820,
          ),
          mwBHImage(
            hash: oroImageAssetGif.hash,
            imageUrl: oroImageAssetGif.imageUrl,
            width: maxWidth,
            aspectR: 600 / 361,
          ),

          ...[
            OroImageHelper.oroPlane_3,
            OroImageHelper.person3x_4,
            OroImageHelper.tickerOverView_6,
            OroImageHelper.tickerOverViewB_7,
          ].map(
            (path) => Image.network(
              "$path?format=${maxWidth}w",
            ),
          ),

          //* animated images (tickets🤔) // height commented 😂
          Image2xAnimation(
            fontImagePath: OroImageHelper.tickerLaToreX_8,
            backImagePath: OroImageHelper.tickerLaToreY_8,
            width: maxWidth,
          ),

          Image2xAnimation(
            fontImagePath: OroImageHelper.tickerElRealX_9,
            backImagePath: OroImageHelper.tickerElRealY_9,
            width: maxWidth,
          ),

          Image2xAnimation(
            fontImagePath: OroImageHelper.tickerLaPlazaX_10,
            backImagePath: OroImageHelper.tickerLaPlazaY_10,
            width: maxWidth,
          ),

          Image2xAnimation(
            fontImagePath: OroImageHelper.tickerLasSetasX_11,
            backImagePath: OroImageHelper.tickerLasSetasY_11,
            width: maxWidth,
          ),

          //* giffy  website preview
          mwBHImage(
            hash: websitePreview.hash,
            imageUrl: websitePreview.imageUrl,
            width: maxWidth,
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
              hash: phonePreview.hash,
              imageUrl: phonePreview.imageUrl,
              width: maxWidth,
              aspectR: 86 / 120,
              fit: BoxFit.fitHeight,
            ),
          ),

          ...[
            OroImageHelper.oroApp_12,
            OroImageHelper.oroApp_13,
            OroImageHelper.oroLogo,
          ].map(
            (path) => Image.network(
              "$path?format=${maxWidth}w",
            ),
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
