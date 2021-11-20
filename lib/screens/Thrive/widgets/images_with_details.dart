import 'package:flutter/material.dart';

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

          //Overview
          mwBHImage(
            hash: overView_1.hash,
            imageUrl: overView_1.imageUrl,
            width: maxWidth,
            aspectR: 10 / 4,
          ),

          //idea
          mwBHImage(
            hash: idea_2.hash,
            imageUrl: idea_2.imageUrl,
            width: maxWidth,
            aspectR: 75 / 48,
            fit: BoxFit.fitHeight,
          ),

          // thrive_research_logo.jpeg",
          mwBHImage(
            hash: researcHeaders.hash,
            imageUrl: researcHeaders.imageUrl,
            width: maxWidth,
            aspectR: 100 / 5,
          ),

          //DONE: P4 add slide show
          ImageSliderOnThrive(
            maxWidth: maxWidth,
          ),

          //*  using overView hash😅
          mwBHImage(
            hash: overView_1.hash,
            imageUrl: ImageHandler.designProblem_5,
            width: maxWidth,
            fit: BoxFit.fitHeight,
            aspectR: 100 / 37,
          ),

          mwBHImage(
            hash: moodBoard.hash,
            imageUrl: moodBoard.imageUrl,
            width: maxWidth,
            aspectR: 25 / 14,
          ),

          Image.network(
            "${ImageHandler.designObjective_6x}?format=${maxWidth}w",
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

          //Header
          mwBHImage(
            hash: parkMapInteractiveHeader.hash,
            imageUrl: parkMapInteractiveHeader.imageUrl,
            width: maxWidth,
            fit: BoxFit.fitWidth,
            aspectR: 750 / 38,
          ),
          mwBHImage(
            hash: parkMapInteractive.hash,
            imageUrl: parkMapInteractive.imageUrl,
            width: maxWidth,
            aspectR: 1000 / 563,
          ),

          //TODO:: Video

          ...[
            ImageHandler.parkppTitle_14,
            ImageHandler.parkApp_15,
            ImageHandler.parkAppFinalScreenHeader_x,
            ImageHandler.parkAppFinalScreen_16_x,
            ImageHandler.memorabilia_16,
            ImageHandler.tshirt_f_17,
            ImageHandler.tshirt_m_18,
            ImageHandler.holdingBag_18,
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
