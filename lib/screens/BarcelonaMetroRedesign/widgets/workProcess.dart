import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class WorkProcessUsingBlurHash extends StatelessWidget {
  final double maxWidth;

  const WorkProcessUsingBlurHash({Key? key, required this.maxWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...[
        mwBHImage(
          hash: assetGif1(width: maxWidth).hash,
          imageUrl: assetGif1(width: maxWidth).imageUrl,
          aspectR: 750 / 375,
        ),
        mwBHImage(
          hash: overView(width: maxWidth).hash,
          imageUrl: overView(width: maxWidth).imageUrl,
          aspectR: 750 / 249,
        ),
        mwBHImage(
          hash: transportsMetroWall(width: maxWidth).hash,
          imageUrl: transportsMetroWall(width: maxWidth).imageUrl,
          aspectR: 750 / 379,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Image.network(metroMapTitle(width: maxWidth).imageUrl),
        ),
        mwBHImage(
          hash: redesignMetroMap(width: maxWidth).hash,
          imageUrl: redesignMetroMap(width: maxWidth).imageUrl,
          aspectR: 750 / 405,
        ),
        mwBHImage(
          hash: beforeAndAfterDesign(width: maxWidth).hash,
          imageUrl: beforeAndAfterDesign(width: maxWidth).imageUrl,
          aspectR: 750 / 405,
        ),
        mwBHImage(
          hash: tbm(width: maxWidth).hash,
          imageUrl: tbm(width: maxWidth).imageUrl,
          aspectR: 1000 / 1205,
        ),
        mwBHImage(
          hash: designObjective(width: maxWidth).hash,
          imageUrl: designObjective(width: maxWidth).imageUrl,
          aspectR: 1000 / 298,
        ),
        mwBHImage(
          hash: inspiration(width: maxWidth).hash,
          imageUrl: inspiration(width: maxWidth).imageUrl,
          aspectR: 750 / 533,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490689449652-BWCVC217AAH1QWLP7GKL/concept.jpg?format=${maxWidth}w",
        ),
        mwBHImage(
          hash: concept(width: maxWidth).hash,
          imageUrl: concept(width: maxWidth).imageUrl,
          aspectR: 250 / 121,
          fit: BoxFit.fitWidth,
        ),
        mwBHImage(
          hash: imageAssetBMR9(width: maxWidth).hash,
          imageUrl: imageAssetBMR9(width: maxWidth).imageUrl,
          aspectR: 750 / 484,
          fit: BoxFit.contain,
        ),
        mwBHImage(
          hash: process(width: maxWidth).hash,
          imageUrl: process(width: maxWidth).imageUrl,
          aspectR: 750 / 963,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1490693876362-8HAIKBPHDF7VM8Z0RUII/LABELS2.jpg?format=${maxWidth}w",
        ),
        mwBHImage(
          hash: imageAssetBMR11(width: maxWidth).hash,
          imageUrl: imageAssetBMR11(width: maxWidth).imageUrl,
          aspectR: 750 / 583,
        ),
      ].map(
        (e) => Padding(
          padding: EdgeInsets.only(
            bottom: columnSpace.height! * .5,
          ),
          child: e,
        ),
      ),
    ]);
  }
}
