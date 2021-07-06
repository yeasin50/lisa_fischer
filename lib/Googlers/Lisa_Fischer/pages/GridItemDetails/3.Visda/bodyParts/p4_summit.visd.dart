import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/dash_green_line.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/text_in_parentheses.dart';
import 'package:portfolio/config/constants.dart';

class P4SummitVisD extends StatelessWidget {
  final BoxConstraints constraints;

  const P4SummitVisD({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                width: constraints.maxWidth * .4,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586110526828-5JRYCUW3TZFN4R0FNWC2/visd%2540_lecturn%2Bintro%2Bpeaking.jpg?format=500w",
              ),
              all_InTheDetails_LeftRowItem(),
            ],
          ),
        ),
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111747987-VANJ4X5K6Q2J1G3QMLC2/visd%40_schedule+and+stickers.jpg?format=750w",
          width: constraints.maxWidth,
          height: constraints.maxWidth * .4,
          fit: BoxFit.fitWidth,
        ),
        columnSpace,

        ///TODO:: create riveAnim
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586804941911-91U581G6FXWZGHJMVV7D/image-asset.png?format=750w",
          width: constraints.maxWidth,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: kTopLevelStackSpace * .4,
        ),

        RichTextInParentheses(
          text: "Speaker Titles",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,
        //4x gif
        speakersRow(),
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586074893081-NVNGYGHSLDACLVCBSCPB/visd%40_photo+and+gif_kelli+anderson.gif?format=750w",
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
        ),

        // columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586074652107-ZMHB67XOS1P1AHREFA8H/visd%40_photo+and+gif_jenny+odell.gif?format=750w",
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
        ),

        ///TODO:: add Rive
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586828783998-2R7W1WQZRALZTO3VZPU3/VisD%252BSummit%252BBranding_v10-52.jpg?format=750w",
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
        ),
      ],
    );
  }

  Row speakersRow() {
    return Row(
      children: [
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075417873-4DX2KPXCYCQDDIEW9GQD/visd%40_speaker+animation_been.gif?format=500w",
          width: constraints.maxWidth * .25,
          fit: BoxFit.fitWidth,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075406620-F6S5T7R8F66XI7PAPAA2/visd%40_speaker+animation_anderson.gif?format=500w",
          width: constraints.maxWidth * .25,
          fit: BoxFit.fitWidth,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075420973-UINJ6DM7A7IR2YGCYPNI/visd%40_speaker+animation_stoten.gif?format=500w",
          width: constraints.maxWidth * .25,
          fit: BoxFit.fitWidth,
        ),
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586108248341-809U7REPLF42OIR10N6A/visd%40_speaker+animation_odell.gif?format=500w",
          width: constraints.maxWidth * .25,
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
            "THE SUMMIT\n",
            style: MyTextStyles().normatText.copyWith(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.4,
                ),
          ),
          greenColorLine,
          SizedBox(height: 30),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text:
                    "A day-long event consisting of inspirational speakers, creative workshops, and networking.",
                style: MyTextStyles().sub26.copyWith(
                      color: Colors.black,
                    ),
              ),
            ]),
          ),
        ],
      ),
    );
}
