import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class ImagesWithDetails extends StatelessWidget {
  const ImagesWithDetails({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  final double maxWidth;

  assetImage(String path) => Image.asset(
        "images/lucere/$path",
        width: maxWidth,
        fit: BoxFit.fitWidth,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          ///GIF
          mwBHImage(
            hash: lucereHeading.hash,
            imageUrl: lucereHeading.imageUrl,
            aspectR: 10 / 5,
            width: maxWidth,
          ),

          //* images Lazy -_-, all are on network image,
          //TODO: let's generate a common hash for all
          ...[
            ImageHandler.lucerePhoneView_2,
            ImageHandler.lucerePhoneView_3,
            ImageHandler.lucerePhoneView_4,
            ImageHandler.luecereFoodWithBag_5,
            ImageHandler.luecereFood_6,
            ImageHandler.lucereFood_8,
            ImageHandler.luecereFoodBag_9,
            ImageHandler.luecereFoodMenu_10,
            ImageHandler.luecereFoodMenu_11,
            ImageHandler.luecereFoodMenu_12,
            ImageHandler.luecereBottomPNG_END,
          ].map(
            (path) => Image.network(
              "$path?format=${maxWidth}w",
            ),
          )
        ].map(
          (w) => Padding(
            padding: EdgeInsets.only(
              bottom: columnSpace.height!,
            ),
            child: w,
          ),
        ),
      ],
    );
  }
}
