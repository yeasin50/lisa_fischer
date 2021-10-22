import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import '../utils/utils.dart';
import '../../../constants/constants.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';

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

        // columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589992208210-0AT6M9TL10EKKELVL6TZ/ke17ZwdGBToddI8pDm48kJ4HEXNP32zXwoP2zqES2qR7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1USR7LFWasliRhq1EJSA6JW2iqbIYCNeMWSk_VrINsC7NoTjsrrYTtYsb0Tg1GvqQYw/lopppet%25252Bmoodboard%25252B2020.jpg?format=1000w",
        ),

        columnSpace,

        RichTextInParentheses(
          text: "The Poster",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587406324634-2I2ASGHYA5EZAMNQM6Q9/ke17ZwdGBToddI8pDm48kEDtpK7ArUMPTQo-2dxdS2R7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0scl71iiVnMuLeEyTFSXT3q5ZxYLqVJqNLgflUUWlO8TMnWFXbjpmgt0vwyL6VuydA/loppetphoto_hanging%2Bon%2Bwall2.jpg?format=750w",
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
          ),

        if (isMobile) ...[
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
              _mwNImage(
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587406500950-74HHP8MUHH2MTC7636HG/ke17ZwdGBToddI8pDm48kCQnVstGeYt8XWwGoxp8f_cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcLthF_aOEGVRewCT7qiippvg9x7yr9GCB1FIEoSNFrAVthizQ3p-uRPkEaZVG0JL8/loppetphoto_poster_djoring%25252Bdetail2.jpg?format=500w",
                width: maxWidth * .5,
              ),
            ],
          ),

        if (isMobile) ...[
          _detailsLeftRowItem(maxWidth),
          columnSpace,
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587406500950-74HHP8MUHH2MTC7636HG/ke17ZwdGBToddI8pDm48kCQnVstGeYt8XWwGoxp8f_cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcLthF_aOEGVRewCT7qiippvg9x7yr9GCB1FIEoSNFrAVthizQ3p-uRPkEaZVG0JL8/loppetphoto_poster_djoring%25252Bdetail2.jpg?format=500w",
          ),
        ],
        SizedBox(
          height: columnSpace.height! * 3,
        ),

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1516874801374-RFGBNC8OCF6HLOM0GU39/ke17ZwdGBToddI8pDm48kK-9XkuHLG0UKYVszNoreR97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k9kZPbuygN4RSDPe_G5PO823i4FCZwXf4GlQRhJgNJJq9VLIOWaiL-CN3_RHafWow/loppetphoto_4b+copy.jpg?format=750w",
          height: maxWidth * .75,
          width: maxWidth,
          fit: BoxFit.cover,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Custom Snow Typography",
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,

        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587798565022-JI0X9301BO4JXJWYHGEU/ke17ZwdGBToddI8pDm48kF4vMsvvtPVvER_z6V9sNad7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qN_-Z3B7EvygvPOPmeOryXqk_AnveJOY8frwCLLkHmI8n299B5M95qw1T7CKwJXPA/Loppet+2017_Event+Snowy+Typography_FINAL-06.jpg?format=750w",
          width: maxWidth,
          fit: BoxFit.contain,
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

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587408236779-XNOV6AATYJ4I6EIW0EK9/ke17ZwdGBToddI8pDm48kNcKbxpnv5VyW17YqWwYalF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0oycmklwMHPwSb2Cr-KYzbreo3AdJijb0m4rmHl7_a7QDQ8-aut-wbauSBr9s231pA/loppetphoto_process_rick%252Blining%252Bup%252Bboard.jpg?format=750w",
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
                      child: BlurHash(
                        hash: loppetProcessImage.hash,
                        image: loppetProcessImage.imageUrl,
                        imageFit: BoxFit.cover,
                      ),
                    ),

                    Image.network(
                      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241736232-DMPCTZQ192ONBIL833TX/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_process_rick+spraying+screen.jpg?format=500w",
                      width: maxWidth * .5 - columnSpace.height! * .5,
                      height: maxWidth * .3 - columnSpace.height! * .5,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Image.network(
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241789122-LM9LY1AJHDJ8CKXJVMW7/ke17ZwdGBToddI8pDm48kOfPbKToHhcJtLbUxp3qS0t7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UeuL_TaR6SLy46ah5kOzWQM0KyfsAhEY16E6RU6p6w-xd-b3ia_Eh6COzPHYPjzSMA/loppetphoto_process_rick+paint.jpg?format=500w",
                  width: maxWidth * .5 - columnSpace.height! * .5,
                  height: maxWidth * .6,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),

        if (isMobile) ...[
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241668534-GTFT135D1T9YXBZC7P9T/ke17ZwdGBToddI8pDm48kJbAF3wIXfPI3KZ7YcFHtUlZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyncw1JCDmUPU_9GYCKL83k11DkbnWpd25D8SsFcoQaTAcgRNQqoIjeIA2Kt7udhCg/loppet+process+animation.gif?format=500w",
          ),
          columnSpace,
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241736232-DMPCTZQ192ONBIL833TX/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_process_rick+spraying+screen.jpg?format=500w",
          ),
          columnSpace,
          _mwNImage(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241789122-LM9LY1AJHDJ8CKXJVMW7/ke17ZwdGBToddI8pDm48kOfPbKToHhcJtLbUxp3qS0t7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UeuL_TaR6SLy46ah5kOzWQM0KyfsAhEY16E6RU6p6w-xd-b3ia_Eh6COzPHYPjzSMA/loppetphoto_process_rick+paint.jpg?format=500w",
          ),
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
