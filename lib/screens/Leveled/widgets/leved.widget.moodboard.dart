import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P4Mood2 extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P4Mood2({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

// RichTextInParentheses
  get _itemSpaceAboveRTP => SizedBox(
        height: columnSpace.height! * 3,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "MoodBoard",
            textStyle: AppTextStyles.textParan20,
          ),
        ),

        mwBHImage(
          hash: levedBmoodboard.hash,
          imageUrl: levedBmoodboard.imageUrl,
          aspectR: 1000 / 401,
        ),

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Identity",
            textStyle: AppTextStyles.textParan20,
          ),
        ),

        columnSpace,

        mwBHImage(
          hash: leved3xSample.hash,
          imageUrl: leved3xSample.imageUrl,
          aspectR: 750 / 532,
        ),

        columnSpace,

        //* The Symbole
        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: maxWidth / 2,
                child: mwBHImage(
                  hash: levedLogoAnimation.hash,
                  imageUrl: levedLogoAnimation.imageUrl,
                  aspectR: 1.0,
                ),
              ),
              detailsLeftRowItem(maxWidth * .5),
            ],
          )
        else ...[
          Center(
            child: SizedBox(
              width: maxWidth * .75,
              child: mwBHImage(
                hash: levedLogoAnimation.hash,
                imageUrl: levedLogoAnimation.imageUrl,
                aspectR: 1.0,
              ),
            ),
          ),
          detailsLeftRowItem(maxWidth),
        ],

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Pattern Elements",
            textStyle: AppTextStyles.textParan20,
          ),
        ),

        columnSpace,

        mwBHImage(
          hash: levedPattern11(maxWidth).hash,
          imageUrl: levedPattern11(maxWidth).imageUrl,
          aspectR: 100 / 52,
        ),

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Iconography",
            textStyle: AppTextStyles.textParan20,
          ),
        ),

        columnSpace,

        //*3x gif
        iconographyRow(),
        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Stationary ",
            textStyle: AppTextStyles.textParan20,
          ),
        ),

        columnSpace,

        mwBHImage(
          hash: levedLetterHead(maxWidth).hash,
          imageUrl: levedLetterHead(maxWidth).imageUrl,
          aspectR: 100 / 68,
        ),
        columnSpace,

        if (!isMobile)
          Row(
            children: [
              SizedBox(
                height: maxWidth * .6,
                width: maxWidth * .6 - columnSpace.height!,
                child: mwBHImage(
                  hash: leveledPencils(maxWidth).hash,
                  imageUrl: leveledPencils(maxWidth).imageUrl,
                  aspectR: 95 / 157,
                ),
              ),
              SizedBox(
                width: columnSpace.height,
              ),
              SizedBox(
                width: maxWidth * .4,
                height: maxWidth * .6,
                child: mwBHImage(
                  hash: leveledBusinessCard(maxWidth).hash,
                  imageUrl: leveledBusinessCard(maxWidth).imageUrl,
                  aspectR: 17 / 14,
                ),
              ),
            ],
          )
        else ...[
          mwBHImage(
            hash: leveledPencils(maxWidth).hash,
            imageUrl: leveledPencils(maxWidth).imageUrl,
            aspectR: 95 / 157,
          ),
          columnSpace,
          mwBHImage(
            hash: leveledBusinessCard(maxWidth).hash,
            imageUrl: leveledBusinessCard(maxWidth).imageUrl,
            aspectR: 17 / 14,
          ),
        ],

        columnSpace,

        mwBHImage(
          hash: leveledBluePattern11(maxWidth).hash,
          imageUrl: leveledBluePattern11(maxWidth).imageUrl,
          aspectR: 75 / 37,
        ),

        columnSpace,

        mwBHImage(
          hash: leveledQoutePink(maxWidth).hash,
          imageUrl: leveledQoutePink(maxWidth).imageUrl,
          aspectR: 75 / 37,
        ),

        _itemSpaceAboveRTP,
      ],
    );
  }

  get _iconWidth => isMobile ? maxWidth / 2 - 4 : maxWidth / 3 - 4;

  SizedBox iconographyRow() {
    return SizedBox(
      width: maxWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          SizedBox(
            width: _iconWidth,
            child: mwBHImage(
              hash: portfolioMainIconsSeperate64(maxWidth).hash,
              imageUrl: portfolioMainIconsSeperate64(maxWidth).imageUrl,
              aspectR: 1,
            ),
          ),
          SizedBox(
            width: _iconWidth,
            child: mwBHImage(
              hash: portfolioMainIconsSeperate65(maxWidth).hash,
              imageUrl: portfolioMainIconsSeperate65(maxWidth).imageUrl,
              aspectR: 1,
            ),
          ),
          SizedBox(
            width: _iconWidth,
            child: mwBHImage(
              hash: portfolioMainIconsSeperate66(maxWidth).hash,
              imageUrl: portfolioMainIconsSeperate66(maxWidth).imageUrl,
              aspectR: 1,
            ),
          ),
        ],
      ),
    );
  }

  Container detailsLeftRowItem(double w) => Container(
        width: w,
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!isMobile) columnSpace,
            Text(
              "THE SYMBOL\n",
              style: AppTextStyles.normal.copyWith(
                color: Colors.black54,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.4,
              ),
            ),
            greenColorLine,
            SizedBox(height: 30),
            ConstrainedBox(
              constraints: BoxConstraints(
                  // maxWidth: constraints.maxWidth * .37,
                  ),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text:
                        "Interweaving symmetrical forms designed to find harmony between balance + intricacy.",
                    style: AppTextStyles.sub26.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
            ),
            columnSpace,
          ],
        ),
      );
}
