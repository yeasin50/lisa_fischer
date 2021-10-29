import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P4Postars extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P4Postars({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  _mwNImage(String url, {double? height, double? width}) => Image.network(
        url,
        width: width ?? maxWidth,
        height: height,
        fit: BoxFit.fitWidth,
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "MoodBoard",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        mwBHImage(
          hash: moodboardLoppet.hash,
          imageUrl: moodboardLoppet.imageUrl,
          width: maxWidth,
          aspectR: 100 / 46,
        ),

        columnSpace,

        RichTextInParentheses(
          text: "The Poster",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        mwBHImage(
          hash: posterH_1.hash,
          imageUrl: posterH_1.imageUrl,
          aspectR: 750 / 656,
          width: maxWidth,
        ),
        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587334677776-Z0NPIRICE4HDEZU6W5TL/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_poster_detail_winter.jpg?format=750w",
          height: maxWidth * .35,
        ),

        columnSpace,

        if (!isMobile)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587416961975-QQGZAD2S3TI19JRLNKUQ/ke17ZwdGBToddI8pDm48kEsFk1O8Gek8ZkxpuU1MOuZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmgbBA9KfxWpJIziZzus6eiIV5SrldvG-ZfE4bDsavGsxSYzaAOcKLYDaVQCzbyV4T/loppetphoto_poster_kid%252Bdetail.jpg?format=500w",
                width: maxWidth * .5 - columnSpace.height! * .5,
                height: (maxWidth * .5 - columnSpace.height! * .5) * .75,
                fit: BoxFit.cover,
              ),
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587414384121-I3DT78PH3ZOY20R9A1IG/ke17ZwdGBToddI8pDm48kD-IJ-07EdvPVsYeiorIfKF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UW6WrXdejFHpuUHxuMj_JNBggSFovcBsWWcEjsR2m6yREzDpBYAkWSbbM3-8OZpI4w/loppetphoto_poster_logo%252Bdetail.jpg?format=500w",
                width: maxWidth * .5 - columnSpace.height! * .5,
                height: (maxWidth * .5 - columnSpace.height! * .5) * .75,
                fit: BoxFit.cover,
              ),
            ],
          )
        else ...[
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587416961975-QQGZAD2S3TI19JRLNKUQ/ke17ZwdGBToddI8pDm48kEsFk1O8Gek8ZkxpuU1MOuZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmgbBA9KfxWpJIziZzus6eiIV5SrldvG-ZfE4bDsavGsxSYzaAOcKLYDaVQCzbyV4T/loppetphoto_poster_kid%252Bdetail.jpg?format=500w",
          ),
          columnSpace,
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587414384121-I3DT78PH3ZOY20R9A1IG/ke17ZwdGBToddI8pDm48kD-IJ-07EdvPVsYeiorIfKF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UW6WrXdejFHpuUHxuMj_JNBggSFovcBsWWcEjsR2m6yREzDpBYAkWSbbM3-8OZpI4w/loppetphoto_poster_logo%252Bdetail.jpg?format=500w",
          ),
        ],

        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587415935777-43CHU77JQE9RIPGSURUS/ke17ZwdGBToddI8pDm48kHU9G-5fquVhsOBL4byk0QV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UbhdWP0wyOfQlWTBoKTWCfe9pvJvwxjZ_92iR-HAgYufaHwHiHCbTxCLo3H57L5Cyw/loppetphoto_poster_angle+detail.jpg?format=750w",
        ),
        columnSpace,

        //* ALL IN THE DETAILS
        if (!isMobile)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _detailsLeftRowItem(
                maxWidth * .5 - columnSpace.height!,
              ),
              SizedBox(
                width: maxWidth * .5, //might not needed
                child: mwBHImage(
                  hash: allInDetailCover.hash,
                  imageUrl: allInDetailCover.imageUrl,
                  width: maxWidth * .5,
                  aspectR: 5 / 3,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        else ...[
          _detailsLeftRowItem(maxWidth),
          columnSpace,
          //* dublication :- mv to upOne
          mwBHImage(
            hash: allInDetailCover.hash,
            imageUrl: allInDetailCover.imageUrl,
            width: maxWidth * .5,
            aspectR: 5 / 3,
            fit: BoxFit.cover,
          ),
        ],
        SizedBox(
          height: columnSpace.height! * 3,
        ),

        mwBHImage(
          hash: posterH_1.hash,
          imageUrl: posterH_1.imageUrl,
          aspectR: maxWidth / (maxWidth * .75),
          width: maxWidth,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Custom Snow Typography",
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,

        mwBHImage(
          hash: typoGraphy.hash,
          imageUrl: typoGraphy.imageUrl,
          width: maxWidth,
          aspectR: 750 / 1187,
        ),

        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587274555671-AS4NYAZEHMQOEUTZS0M9/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_poster_angle+detail_flake.jpg?format=750w",
          height: maxWidth * .4,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "The Printmaking Process",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        mwBHImage(
          hash: printingProcess_0.hash,
          imageUrl: printingProcess_0.imageUrl,
          aspectR: 750 / 479,
          width: maxWidth,
        ),

        columnSpace,

        //* The Printmaking Process images
        if (!isMobile)
          SizedBox(
            height: maxWidth * .6,
            width: maxWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* gif of mixing
                    SizedBox(
                      width: maxWidth * .5 - columnSpace.height! * .5,
                      height: maxWidth * .3 - columnSpace.height! * .5,
                      child: prinitngProcess0(),
                    ),

                    SizedBox(
                      width: maxWidth * .5 - columnSpace.height! * .5,
                      height: maxWidth * .3 - columnSpace.height! * .5,
                      child: prinitngProcess1(),
                    ),
                  ],
                ),
                SizedBox(
                  width: maxWidth * .5 - columnSpace.height! * .5,
                  height: maxWidth * .6,
                  child: prinitngProcess2(),
                ),
              ],
            ),
          )
        else ...[
          prinitngProcess0(),
          prinitngProcess1(),
          prinitngProcess2(),
        ],

        columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587274779437-PQBT05QHB1K0SUZJ8SDT/loppetphoto_9+copy.jpg?format=750w",
          fit: BoxFit.cover,
          width: maxWidth,
          height: maxWidth * .3,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        )
      ],
    );
  }

  AspectRatio prinitngProcess2() {
    return mwBHImage(
      hash: printingProcess_R0.hash,
      imageUrl: printingProcess_R0.imageUrl,
      width: isMobile ? maxWidth : maxWidth * .5 - columnSpace.height! * .5,
      aspectR: maxWidth * .5 - columnSpace.height! * .5 / maxWidth * .6,
    );
  }

  AspectRatio prinitngProcess1() {
    return mwBHImage(
      hash: printingProcess_L1.hash,
      imageUrl: printingProcess_L1.imageUrl,
      width: isMobile ? maxWidth : maxWidth * .5 - columnSpace.height! * .5,
      aspectR: maxWidth * .5 -
          columnSpace.height! * .5 / maxWidth * .3 -
          columnSpace.height! * .5,
    );
  }

  AspectRatio prinitngProcess0() {
    return mwBHImage(
      hash: loppetProcessImage.hash,
      imageUrl: loppetProcessImage.imageUrl,
      fit: BoxFit.cover,
      width: isMobile ? maxWidth : maxWidth * .5 - columnSpace.height! * .5,
    );
  }

  Container _detailsLeftRowItem(double width) {
    return Container(
      width: width,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          columnSpace,
          Text(
            "ALL IN THE DETAILS",
            style: AppTextStyles.normal.copyWith(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.4,
            ),
          ),
          SizedBox(height: 30),
          greenColorLine,
          SizedBox(height: 30),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text:
                    "Printing was a 5 day process:\n1 day for each layer of ink ",
                style: AppTextStyles.sub26.copyWith(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                      text: "*",
                      style: AppTextStyles.sub26.copyWith(
                        color: kColorDash,
                        height: 1.2,
                      ))
                ],
              ),
            ]),
          ),
          SizedBox(height: 40),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                children: [
                  TextSpan(
                    text: "*",
                    style: AppTextStyles.normal.copyWith(
                      color: kColorDash,
                    ),
                    children: [
                      TextSpan(
                        text:
                            " 4 colors + 1 varnish top coat applied to 130 posters\n",
                        style: AppTextStyles.normal.copyWith(height: 1.2),
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "(using Sky-Parchtone French Paper)",
                    style: AppTextStyles.normal.copyWith(
                      fontStyle: FontStyle.italic,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
