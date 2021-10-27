import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import '../../../utils/blurHashImageTemplate.dart';
import '../utils/utils.dart';
import 'widgets.dart';

class ImagesWithDetails extends StatelessWidget {
  final double maxWidth;

  /// am optional may need, passing for avoiding extra query
  final bool isMobile;

  const ImagesWithDetails({
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
            width: maxWidth,
            hash: thriveHeader_0.hash,
            imageUrl: thriveHeader_0.imageUrl,
            aspectR: 25 / 12,
          ),
          Image.asset(
            "images/thrive/p2.jpg",
            fit: BoxFit.fitWidth,
            width: maxWidth,
          ),

          Image.network("${ImageHandler.idea_2}?format=${maxWidth}w"),
          Image.asset(
            "images/thrive/thrive_research_logo.jpeg",
            fit: BoxFit.fitWidth,
            width: maxWidth,
          ),
          //DONE: P4 add slide show
          ImageSliderOnThrive(),

          Image.asset(
            "images/thrive/p5_desing_problem.jpg",
            fit: BoxFit.fitWidth,
            width: maxWidth,
          ),

          mwBHImage(
            hash: moodBoard.hash,
            imageUrl: moodBoard.imageUrl,
            width: maxWidth,
            aspectR: 25 / 14,
          ),

          Image.asset(
            "images/thrive/p7_designObjective.jpeg",
            fit: BoxFit.fitWidth,
            width: maxWidth,
          ),

          Image.network(
            "${ImageHandler.identityHeader_7}?format=${maxWidth}w",
          ),
          Image.network(
            "${ImageHandler.identity_8}?format=${maxWidth}w",
          ),

          //* Park Map
          mwBHImage(
            hash: parkMap_9.hash,
            imageUrl: parkMap_9.imageUrl,
            width: maxWidth,
            aspectR: 25 / 17,
          ),

          ...[
            ImageHandler.parkPath_10,
            ImageHandler.icons_11,
            ImageHandler.envGraphics_12,
            ImageHandler.wayFindingHeader_13x,
            ImageHandler.wayFinding_13,
          ].map(
            (path) => Image.network(
              "$path?format=${maxWidth}w",
            ),
          ),

          Image.asset(
            "images/thrive/park_map_header.jpeg",
            fit: BoxFit.fitWidth,
            width: maxWidth,
          ),

          mwBHImage(
            hash: parkMapInteractive.hash,
            imageUrl: parkMapInteractive.imageUrl,
            width: maxWidth,
            aspectR: 1000 / 563,
          ),

          ///TODO:: Video

          ...[
            ImageHandler.parkppTitle_14,
            ImageHandler.parkApp_15,
            ImageHandler.parkAppFinalScreenHeader_x,
            ImageHandler.parkAppFinalScreen_16_x,
            ImageHandler.memorabilia_16,
            ImageHandler.tshirt_f_17,
            ImageHandler.tshirt_m_18,
            ImageHandler.holdingBag_19,
            ImageHandler.thriveLogo_end,
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
