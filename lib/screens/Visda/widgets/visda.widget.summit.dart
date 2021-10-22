import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P4SummitVisD extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P4SummitVisD({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  _mwNImage(
    String url, {
    double? width,
  }) =>
      Image.network(
        url,
        width: width ?? maxWidth,
        fit: BoxFit.fitWidth,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _mwNImage(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586110526828-5JRYCUW3TZFN4R0FNWC2/visd%2540_lecturn%2Bintro%2Bpeaking.jpg?format=500w",
                width: maxWidth * .4,
              ),
              SizedBox(
                width: maxWidth / 2,
                child: detailsLeftRowItem(),
              ),
            ],
          ),
        ),
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586111747987-VANJ4X5K6Q2J1G3QMLC2/visd%40_schedule+and+stickers.jpg?format=750w",
          width: maxWidth,
          height: maxWidth * .4,
          fit: BoxFit.fitWidth,
        ),

        columnSpace,

        ///TODO:: create riveAnim
        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586804941911-91U581G6FXWZGHJMVV7D/image-asset.png?format=750w",
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Speaker Titles",
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,
        //4x gif
        speakersRow(),

        columnSpace,

        // kelli Anderson photo+Gif
        AspectRatio(
          aspectRatio: 750 / 407,
          child: BlurHash(
            hash: kelliAndersonGif.hash,
            image: kelliAndersonGif.imageUrl,
            imageFit: BoxFit.cover,
          ),
        ),
        // _mwNImage(
        //   "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586074893081-NVNGYGHSLDACLVCBSCPB/visd%40_photo+and+gif_kelli+anderson.gif?format=750w",
        // ),

        // columnSpace,

        //*  jenny Odell Gif photo+Gif
        AspectRatio(
          aspectRatio: 750 / 407,
          child: BlurHash(
            hash: jennyOdellGif.hash,
            image: jennyOdellGif.imageUrl,
            imageFit: BoxFit.cover,
          ),
        ),
        // _mwNImage(
        //   "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586074652107-ZMHB67XOS1P1AHREFA8H/visd%40_photo+and+gif_jenny+odell.gif?format=750w",
        // ),

        ///TODO:: add Rive
        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586828783998-2R7W1WQZRALZTO3VZPU3/VisD%252BSummit%252BBranding_v10-52.jpg?format=750w",
        ),
      ],
    );
  }

  Widget speakersRow() {
    final _width = isMobile ? maxWidth / 2 : maxWidth / 4;

    return isMobile
        ? Column(
            children: [
              Row(
                children: [
                  _mwNImage(
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075417873-4DX2KPXCYCQDDIEW9GQD/visd%40_speaker+animation_been.gif?format=500w",
                    width: _width,
                  ),
                  _mwNImage(
                      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075406620-F6S5T7R8F66XI7PAPAA2/visd%40_speaker+animation_anderson.gif?format=500w",
                      width: _width),
                ],
              ),
              Row(
                children: [
                  _mwNImage(
                      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075420973-UINJ6DM7A7IR2YGCYPNI/visd%40_speaker+animation_stoten.gif?format=500w",
                      width: _width),
                  _mwNImage(
                      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586108248341-809U7REPLF42OIR10N6A/visd%40_speaker+animation_odell.gif?format=500w",
                      width: _width),
                ],
              )
            ],
          )
        : Row(
            children: [
              _mwNImage(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075417873-4DX2KPXCYCQDDIEW9GQD/visd%40_speaker+animation_been.gif?format=500w",
                width: _width,
              ),
              _mwNImage(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075406620-F6S5T7R8F66XI7PAPAA2/visd%40_speaker+animation_anderson.gif?format=500w",
                  width: _width),
              _mwNImage(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586075420973-UINJ6DM7A7IR2YGCYPNI/visd%40_speaker+animation_stoten.gif?format=500w",
                  width: _width),
              _mwNImage(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586108248341-809U7REPLF42OIR10N6A/visd%40_speaker+animation_odell.gif?format=500w",
                  width: _width),
            ],
          );
  }

  Widget detailsLeftRowItem() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          columnSpace,
          Text(
            "THE SUMMIT\n",
            style: AppTextStyles.normal.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
            ),
          ),
          greenColorLine,
          SizedBox(height: 30),
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text:
                      "A day-long event consisting of inspirational speakers, creative workshops, and networking.",
                  style: AppTextStyles.sub26.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
