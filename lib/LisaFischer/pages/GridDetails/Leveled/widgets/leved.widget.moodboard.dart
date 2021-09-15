import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class P4Mood2 extends StatelessWidget {
  final BoxConstraints constraints;

  const P4Mood2({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "MoodBoard",
          textStyle: MyTextStyles().textParan20,
        ),

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.fitWidth,
          // width: constraints.maxWidth,
          height: constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589988875231-TT2998H1O1RGYR550OEL/leveled%25252Bmoodboard.jpg?format=1000w",
        ),

        RichTextInParentheses(
          text: "Identity",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.fitWidth,
          height: constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589785381152-QW1HMB4Q2K3M6XULLLKW/image-asset.jpeg?format=750w",
        ),

        columnSpace,

        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                width: constraints.maxWidth * .4,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589782233115-SSA8HKVQOQ15TZCP902Y/leveled+logo+animation.gif?format=500w",
              ),
              all_InTheDetails_LeftRowItem(),
            ],
          ),
        ),
        columnSpace, columnSpace,

        // { Pattern Elements }

        RichTextInParentheses(
          text: "Pattern Elements",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.fitWidth,
          height: constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589770580457-4IWGZ7JH646O6P1NNWWC/leveled_pattern-11.jpg?format=1000w",
        ),

        columnSpace, columnSpace,

        RichTextInParentheses(
          text: "Iconography",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        //3x gif
        IconographyRow(),
        columnSpace, columnSpace,

        RichTextInParentheses(
          text: "Stationary ",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589789899508-71HYCGO8X76H4T5YJ1I4/leveled_letterhead+spread.jpg?format=1000w",
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
        ),

        columnSpace,

        Row(
          children: [
            Image.network(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589789968976-ES0RROZ4NU9H2QR6TBPZ/leveled%252BBusiness-Cards%252Bon%252Bwall%252Bbeiege3%252B.jpg?format=750w",
              fit: BoxFit.cover,
              height: constraints.maxWidth * .6,
              width: constraints.maxWidth * .6 - columnSpace.height!,
            ),
            SizedBox(
              width: columnSpace.height,
            ),
            Image.network(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589866725189-HWJV7IXC3OTTCZWVBOCY/leveled_pencils+with+scaled+pattern+behind+vertical.png?format=300w",
              fit: BoxFit.cover,
              width: constraints.maxWidth * .4,
              height: constraints.maxWidth * .6,
            ),
          ],
        ),
        columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589824103069-JVEV1Z0SLY9W063MO0G0/leveled_blue+pins+and+qoute-48.jpg?format=750w",
          fit: BoxFit.cover,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .6,
        ),
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589824302318-ZCOWLQIF27ZVK9FVTRAC/leveled_quote+and+pink+pin+on+right+-21.jpg?format=750w",
          fit: BoxFit.cover,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .6,
        ),
      ],
    );
  }

  Row IconographyRow() {
    return Row(
      children: [
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940432727-V2HMTH14KQ8BP62UWNBK/leveled_jpgs+for+portfolio_main+icons+seperate-64.jpg?format=300w",
          width: constraints.maxWidth * .32,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          width: constraints.maxWidth * .02,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940433133-WWWID5JHTS9NDINS3070/leveled_jpgs+for+portfolio_main+icons+seperate-65.jpg?format=300w",
          width: constraints.maxWidth * .32,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          width: constraints.maxWidth * .02,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589940432668-K1KWCNNZP8X1D1706PJ0/leveled_jpgs+for+portfolio_main+icons+seperate-66.jpg?format=300w",
          width: constraints.maxWidth * .32,
          fit: BoxFit.fitWidth,
        ),
      ],
    );
  }

  Container all_InTheDetails_LeftRowItem() => Container(
        width: constraints.maxWidth * .5,
        alignment: Alignment.centerLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            columnSpace,
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
              constraints: BoxConstraints(maxWidth: constraints.maxWidth * .37),
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
