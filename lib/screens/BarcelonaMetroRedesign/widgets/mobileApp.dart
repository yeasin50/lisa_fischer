import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class MetroMobileApp extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const MetroMobileApp({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          mwBHImage(
            hash: mobileAppHeader.hash,
            imageUrl: mobileAppHeader.imageUrl,
            width: maxWidth,
            aspectR: 750 / 39,
          ),

          mwBHImage(
            hash: mobileAppOnHand.hash,
            imageUrl: mobileAppOnHand.imageUrl,
            width: maxWidth,
            aspectR: 75 / 50,
          ),

          mwBHImage(
            hash: mobileAppScreensView.hash,
            imageUrl: mobileAppScreensView.imageUrl,
            width: maxWidth,
            aspectR: 75 / 47,
          ),

          // * Folding print MAP
          mwBHImage(
            hash: foldingPrintMapHeader.hash,
            imageUrl: foldingPrintMapHeader.imageUrl,
            width: maxWidth,
            aspectR: 750 / 39,
          ),

          mwBHImage(
            hash: foldingPrintMap1.hash,
            imageUrl: foldingPrintMap1.imageUrl,
            width: maxWidth,
            aspectR: 75 / 61,
          ),

          if (!isMobile)
            () {
              final _rowItemHeight = maxWidth * .4;

              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: _rowItemHeight,
                    width: maxWidth * .5 - columnSpace.height! * .5,
                    child: _rowLeftItem(
                      width: maxWidth * .5 - columnSpace.height! * .5,
                    ),
                  ),
                  SizedBox(
                    height: _rowItemHeight,
                    width: maxWidth * .5 - 10,
                    child: _rowItemRight(
                      width: maxWidth * .5 - 10,
                    ),
                  ),
                ],
              );
            }()
          else ...[
            _rowLeftItem(width: maxWidth),
            _rowItemRight(width: maxWidth),
          ],

          mwBHImage(
            hash: bercelonaMetroMapStations.hash,
            imageUrl: bercelonaMetroMapStations.imageUrl,
            width: maxWidth,
            aspectR: 75 / 55,
          ),
          mwBHImage(
            hash: bercelonaMetroMapStationsP2.hash,
            imageUrl: bercelonaMetroMapStationsP2.imageUrl,
            width: maxWidth,
            aspectR: 75 / 56,
          ),

          ///metroLogo
          mwBHImage(
            hash: bercelonaMetroRDBLogo.hash,
            imageUrl: bercelonaMetroRDBLogo.imageUrl,
            width: maxWidth,
            aspectR: 75 / 53,
          )
        ].map(
          (e) => Padding(
            padding: EdgeInsets.only(bottom: columnSpace.height! * .5),
            child: e,
          ),
        ),
      ],
    );
  }

  AspectRatio _rowItemRight({
    required double width,
  }) {
    return mwBHImage(
      hash: bercelonaMetroMapRight.hash,
      imageUrl: bercelonaMetroMapRight.imageUrl,
      width: width,
      aspectR: isMobile ? 4 / 3 : 5 / 2,
    );
  }

  AspectRatio _rowLeftItem({
    required double width,
  }) {
    return mwBHImage(
      hash: bercelonaMetroMapLeft.hash,
      imageUrl: bercelonaMetroMapLeft.imageUrl,
      width: width,
      aspectR: isMobile ? 4 / 3 : 5 / 4,
    );
  }
}
