import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/text_in_parentheses.dart';
import 'package:portfolio/config/constants.dart';

class P5RaceDay extends StatelessWidget {
  final BoxConstraints constraints;

  const P5RaceDay({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //TODO:: change color on -
        RichTextInParentheses(
          text: "Race Day - Bibs",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        Container(
          height: constraints.maxWidth * .8,
          width: constraints.maxWidth,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                width: constraints.maxWidth * .5 - 20,
                height: constraints.maxWidth * .8,
                fit: BoxFit.fitHeight,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242384498-HZM20QZTTJ5K9932LWLW/loppetphoto_raceday2+copy.jpg?format=750w",
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: placeHolderImagePath,
                    width: constraints.maxWidth * .5,
                    height: constraints.maxWidth * .4 - 10,
                    fit: BoxFit.cover,
                    image:
                        "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242954704-P7XG1WX7KEQH3H7RLHFN/loppetphoto_raceday3%2Bcopy.jpg?format=500w",
                  ),
                  FadeInImage.assetNetwork(
                    placeholder: placeHolderImagePath,
                    width: constraints.maxWidth * .5,
                    height: constraints.maxWidth * .4 - 10,
                    fit: BoxFit.cover,
                    image:
                        "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587242545828-NFV2LK8X996N0EC5GD1V/loppetphoto_raceday.jpg?format=500w",
                  ),
                ],
              ),
            ],
          ),
        ),

        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.cover,
          width: constraints.maxWidth,
          // height: constraints.maxWidth * .25,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587273600081-W9PVGDTOV5FNPQQWX87W/loppet+animation+banner+logo.gif?format=750w",
          // imageScale: .3,
        ),

        columnSpace,

        ///TODO:: add grid
      ],
    );
  }
}
