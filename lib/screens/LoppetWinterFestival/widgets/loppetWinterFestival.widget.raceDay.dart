import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P5RaceDay extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P5RaceDay({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: maxWidth * .75,
          child: Column(
            children: [
              Text(
                '"',
                style: AppTextStyles.title.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "The best part of these prints is that no 2 prints are exactly alike. There are so many imperfections and beautiful little “accidents” that you cannot foresee prior to pulling the screens.",
                textAlign: TextAlign.center,
                style: AppTextStyles.sub26.copyWith(
                  color: Colors.black,
                ),
              ),
              columnSpace,

              ///* " JOSEPH DUFFY • PARTNER, DUFFY",
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "{ ",
                      style: AppTextStyles.textInParan13.copyWith(
                        color: kColorDash,
                      ),
                    ),
                    TextSpan(
                      text: "JOSEPH DUFFY ",
                      style: AppTextStyles.textInParan13,
                    ),
                    TextSpan(
                      text: "• ",
                      style: AppTextStyles.textInParan13.copyWith(
                        color: kColorDash,
                      ),
                    ),
                    TextSpan(
                      text: "PARTNER, DUFFY ",
                      style: AppTextStyles.textInParan13,
                    ),
                    TextSpan(
                      text: "}",
                      style: AppTextStyles.textInParan13.copyWith(
                        color: kColorDash,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 4,
        ),

        //TODO:: change color on -
        RichTextInParentheses(
          text: "Race Day - Bibs",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        if (!isMobile)
          () {
            final double rowHeight = maxWidth * .8;
            final double rowWidth = maxWidth * .5 - columnSpace.height! * .5;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: rowWidth,
                  height: rowHeight,
                  child: mwBHImage(
                    hash: loppetRaceDay_L0.hash,
                    imageUrl: loppetRaceDay_L0.imageUrl,
                    width: this.maxWidth,
                    aspectR: rowWidth / rowHeight,
                  ),
                ),
                () {
                  final double columnItemHeight =
                      maxWidth * .4 - columnSpace.height! * .5;

                  final double columnItemWidth =
                      maxWidth * .5 - columnSpace.height! * .5;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: columnItemWidth,
                        height: columnItemHeight,
                        child: mwBHImage(
                          hash: loppetRaceDay_R0.hash,
                          imageUrl: loppetRaceDay_R0.imageUrl,
                          width: columnItemWidth,
                          aspectR: columnItemWidth / columnItemHeight,
                        ),
                      ),
                      columnSpace,
                      SizedBox(
                        width: columnItemWidth,
                        height: columnItemHeight,
                        child: mwBHImage(
                          hash: loppetRaceDay_R1.hash,
                          imageUrl: loppetRaceDay_R1.imageUrl,
                          width: columnItemWidth,
                          aspectR: columnItemWidth / columnItemHeight,
                        ),
                      ),
                    ],
                  );
                }(),
              ],
            );
          }()
        else ...[
          //* dublication 😅
          mwBHImage(
            hash: loppetRaceDay_L0.hash,
            imageUrl: loppetRaceDay_L0.imageUrl,
            width: this.maxWidth,
            aspectR: 75 / 76,
          ),
          columnSpace,
          mwBHImage(
            hash: loppetRaceDay_R0.hash,
            imageUrl: loppetRaceDay_R0.imageUrl,
            width: this.maxWidth,
            aspectR: 5 / 3,
          ),
          columnSpace,
          mwBHImage(
            hash: loppetRaceDay_R1.hash,
            imageUrl: loppetRaceDay_R1.imageUrl,
            width: this.maxWidth,
            aspectR: 5 / 3,
          ),
        ],

        columnSpace,

        mwBHImage(
          hash: loppetLogo.hash,
          imageUrl: loppetLogo.imageUrl,
          aspectR: maxWidth / (maxWidth / 2),
          width: maxWidth,
        ),

        columnSpace,
      ],
    );
  }
}
