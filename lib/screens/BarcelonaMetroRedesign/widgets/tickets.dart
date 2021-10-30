import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

class Tickets extends StatelessWidget {
  ///* It seems may hard-coded but we are avoiding calling another Query
  final bool isMobileView;

  final double maxWidth;

  const Tickets({
    Key? key,
    this.isMobileView = false,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Tickets
        mwBHImage(
          aspectR: 750 / 39,
          hash: ticketHeader.hash,
          imageUrl: ticketHeader.imageUrl,
          width: maxWidth,
        ),
        columnSpace,

        if (!isMobileView)
          () {
            final double itemHeight = maxWidth * .4;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: maxWidth * .4 - columnSpace.height! * .5,
                  height: itemHeight,
                  child: _metroTicketLeft(
                    maxWidth * .4 - columnSpace.height! * .5,
                  ),
                ),
                SizedBox(
                  width: maxWidth * .6 - columnSpace.height! * .5,
                  height: itemHeight,
                  child: _metroTicketRight(
                    maxWidth * .6 - columnSpace.height! * .5,
                  ),
                ),
              ],
            );
          }()
        else ...[
          _metroTicketLeft(maxWidth),
          columnSpace,
          _metroTicketRight(maxWidth),
        ],

        columnSpace,

        mwBHImage(
          hash: metroTicketBottom.hash,
          imageUrl: metroTicketBottom.imageUrl,
          width: maxWidth,
          aspectR: maxWidth / (maxWidth * .75),
        ),
        columnSpace,
      ],
    );
  }

  AspectRatio _metroTicketRight(double itemWidth) {
    return mwBHImage(
      hash: metroTicketRight.hash,
      imageUrl: metroTicketRight.imageUrl,
      aspectR: isMobileView ? 4 / 3 : 3 / 10,
      width: itemWidth,
    );
  }

  AspectRatio _metroTicketLeft(double itemWidth) {
    return mwBHImage(
      hash: metroTicketLeft.hash,
      imageUrl: metroTicketLeft.imageUrl,
      aspectR: isMobileView ? 3.5 / 4 : 6 / 10,
      width: itemWidth,
    );
  }
}
