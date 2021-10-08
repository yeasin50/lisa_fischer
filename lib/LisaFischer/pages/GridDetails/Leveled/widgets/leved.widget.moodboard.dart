import 'package:flutter/material.dart';

import '../../../../../configs/configs.dart';
import '../../../../../widgets/widgets.dart';
import '../../../../widgets/widgets.dart';

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
        height: 60,
      );

  _maxWImage(String url) => Image.network(
        url,
        width: maxWidth,
        fit: BoxFit.fitWidth,
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
            textStyle: MyTextStyles().textParan20,
          ),
        ),

        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589988875231-TT2998H1O1RGYR550OEL/leveled%25252Bmoodboard.jpg?format=1000w",
        ),

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Identity",
            textStyle: MyTextStyles().textParan20,
          ),
        ),

        columnSpace,

        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589785381152-QW1HMB4Q2K3M6XULLLKW/image-asset.jpeg?format=750w",
        ),

        columnSpace,

        //* The Symbole
        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589782233115-SSA8HKVQOQ15TZCP902Y/leveled+logo+animation.gif?format=500w",
                width: maxWidth * .5,
                fit: BoxFit.fitWidth,
              ),
              detailsLeftRowItem(maxWidth * .5),
            ],
          ),

        //* yap, we can use another column for this
        if (isMobile)
          _maxWImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589782233115-SSA8HKVQOQ15TZCP902Y/leveled+logo+animation.gif?format=500w",
          ),
        if (isMobile) detailsLeftRowItem(maxWidth),

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Pattern Elements",
            textStyle: MyTextStyles().textParan20,
          ),
        ),

        columnSpace,

        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589770580457-4IWGZ7JH646O6P1NNWWC/leveled_pattern-11.jpg?format=1000w",
        ),

        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Iconography",
            textStyle: MyTextStyles().textParan20,
          ),
        ),

        columnSpace,

        //*3x gif
        IconographyRow(),
        _itemSpaceAboveRTP,

        Center(
          child: RichTextInParentheses(
            text: "Stationary ",
            textStyle: MyTextStyles().textParan20,
          ),
        ),

        columnSpace,

        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589789899508-71HYCGO8X76H4T5YJ1I4/leveled_letterhead+spread.jpg?format=1000w",
        ),

        columnSpace,

        if (!isMobile)
          Row(
            children: [
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589789968976-ES0RROZ4NU9H2QR6TBPZ/leveled%252BBusiness-Cards%252Bon%252Bwall%252Bbeiege3%252B.jpg?format=750w",
                fit: BoxFit.cover,
                height: maxWidth * .6,
                width: maxWidth * .6 - columnSpace.height!,
              ),
              SizedBox(
                width: columnSpace.height,
              ),
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589866725189-HWJV7IXC3OTTCZWVBOCY/leveled_pencils+with+scaled+pattern+behind+vertical.png?format=300w",
                fit: BoxFit.cover,
                width: maxWidth * .4,
                height: maxWidth * .6,
              ),
            ],
          ),

        if (isMobile)
          Column(
            children: [
              _maxWImage(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589789968976-ES0RROZ4NU9H2QR6TBPZ/leveled%252BBusiness-Cards%252Bon%252Bwall%252Bbeiege3%252B.jpg?format=750w"),
              columnSpace,
              _maxWImage(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589866725189-HWJV7IXC3OTTCZWVBOCY/leveled_pencils+with+scaled+pattern+behind+vertical.png?format=300w"),
            ],
          ),

        columnSpace,

        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589824103069-JVEV1Z0SLY9W063MO0G0/leveled_blue+pins+and+qoute-48.jpg?format=750w",
        ),
        columnSpace,
        _maxWImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589824302318-ZCOWLQIF27ZVK9FVTRAC/leveled_quote+and+pink+pin+on+right+-21.jpg?format=750w",
        ),

        _itemSpaceAboveRTP,
      ],
    );
  }

  get _iconWidth => isMobile ? maxWidth / 2 : maxWidth / 3;

  SizedBox IconographyRow() {
    return SizedBox(
      width: maxWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940432727-V2HMTH14KQ8BP62UWNBK/leveled_jpgs+for+portfolio_main+icons+seperate-64.jpg?format=300w",
            fit: BoxFit.fitWidth,
            width: _iconWidth - 4,
          ),
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940433133-WWWID5JHTS9NDINS3070/leveled_jpgs+for+portfolio_main+icons+seperate-65.jpg?format=300w",
            width: _iconWidth - 4,
            fit: BoxFit.fitWidth,
          ),
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940432668-K1KWCNNZP8X1D1706PJ0/leveled_jpgs+for+portfolio_main+icons+seperate-66.jpg?format=300w",
            width: _iconWidth - 4,
            fit: BoxFit.fitWidth,
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
              style: MyTextStyles().normatText.copyWith(
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
                    style: MyTextStyles().sub26.copyWith(
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
