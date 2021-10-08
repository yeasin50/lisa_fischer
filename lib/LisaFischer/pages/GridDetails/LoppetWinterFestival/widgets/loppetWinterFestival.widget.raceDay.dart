import 'package:flutter/material.dart';

import '../../../../../configs/configs.dart';
import '../../../../../widgets/widgets.dart';

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
                style: titleTextStyle.copyWith(
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                "The best part of these prints is that no 2 prints are exactly alike. There are so many imperfections and beautiful little “accidents” that you cannot foresee prior to pulling the screens.",
                textAlign: TextAlign.center,
                style: MyTextStyles().sub26.copyWith(
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
                      style: MyTextStyles().textInParan.copyWith(
                            color: kColorDash,
                          ),
                    ),
                    TextSpan(
                      text: "JOSEPH DUFFY ",
                      style: MyTextStyles().textInParan,
                    ),
                    TextSpan(
                      text: "• ",
                      style: MyTextStyles().textInParan.copyWith(
                            color: kColorDash,
                          ),
                    ),
                    TextSpan(
                      text: "PARTNER, DUFFY ",
                      style: MyTextStyles().textInParan,
                    ),
                    TextSpan(
                      text: "}",
                      style: MyTextStyles().textInParan.copyWith(
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
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                width: maxWidth * .5 - columnSpace.height! * .5,
                height: maxWidth * .8,
                fit: BoxFit.cover,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242384498-HZM20QZTTJ5K9932LWLW/loppetphoto_raceday2+copy.jpg?format=750w",
              ),
              Column(
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: placeHolderImagePath,
                    width: maxWidth * .5 - columnSpace.height! * .5,
                    height: maxWidth * .4 - columnSpace.height! * .5,
                    fit: BoxFit.cover,
                    image:
                        "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242954704-P7XG1WX7KEQH3H7RLHFN/loppetphoto_raceday3%2Bcopy.jpg?format=500w",
                  ),
                  columnSpace,

                  ///* can be blurHash
                  Image.network(
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242545828-NFV2LK8X996N0EC5GD1V/loppetphoto_raceday.jpg?format=500w",
                    width: maxWidth * .5 - columnSpace.height! * .5,
                    height: maxWidth * .4 - columnSpace.height! * .5,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          ),

        if (isMobile) ...[
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242384498-HZM20QZTTJ5K9932LWLW/loppetphoto_raceday2+copy.jpg?format=750w",
            width: maxWidth,
            fit: BoxFit.fitWidth,
          ),
          columnSpace,
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242954704-P7XG1WX7KEQH3H7RLHFN/loppetphoto_raceday3%2Bcopy.jpg?format=500w",
            width: maxWidth,
            fit: BoxFit.fitWidth,
          ),
          columnSpace,
          Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242545828-NFV2LK8X996N0EC5GD1V/loppetphoto_raceday.jpg?format=500w",
            width: maxWidth,
            fit: BoxFit.fitWidth,
          ),
        ],

        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.cover,
          width: maxWidth,
          // height: constraints.maxWidth * .25,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587273600081-W9PVGDTOV5FNPQQWX87W/loppet+animation+banner+logo.gif?format=750w",
          // imageScale: .3,
        ),
        columnSpace,
      ],
    );
  }
}
