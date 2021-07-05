import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/dash_green_line.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/fadeIn_net_image.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/text_in_parentheses.dart';
import 'package:portfolio/config/constants.dart';

class P4Postars extends StatelessWidget {
  final BoxConstraints constraints;

  const P4Postars({Key? key, required this.constraints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kTopLevelStackSpace * .6,
        ),
        RichTextInParentheses(
          text: "The Poster",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,

        fadeNetImage(
          constraints,
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587406324634-2I2ASGHYA5EZAMNQM6Q9/ke17ZwdGBToddI8pDm48kEDtpK7ArUMPTQo-2dxdS2R7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0scl71iiVnMuLeEyTFSXT3q5ZxYLqVJqNLgflUUWlO8TMnWFXbjpmgt0vwyL6VuydA/loppetphoto_hanging%2Bon%2Bwall2.jpg?format=750w",
        ),
        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .35,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587334677776-Z0NPIRICE4HDEZU6W5TL/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_poster_detail_winter.jpg?format=750w",
        ),

        columnSpace,

        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            fadeInImageHalf(constraints,
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587416961975-QQGZAD2S3TI19JRLNKUQ/ke17ZwdGBToddI8pDm48kEsFk1O8Gek8ZkxpuU1MOuZ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmgbBA9KfxWpJIziZzus6eiIV5SrldvG-ZfE4bDsavGsxSYzaAOcKLYDaVQCzbyV4T/loppetphoto_poster_kid%252Bdetail.jpg?format=500w"),
            fadeInImageHalf(constraints,
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587414384121-I3DT78PH3ZOY20R9A1IG/ke17ZwdGBToddI8pDm48kD-IJ-07EdvPVsYeiorIfKF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UW6WrXdejFHpuUHxuMj_JNBggSFovcBsWWcEjsR2m6yREzDpBYAkWSbbM3-8OZpI4w/loppetphoto_poster_logo%252Bdetail.jpg?format=500w"),
          ],
        ),
        columnSpace,
        fadeNetImage(constraints,
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587415935777-43CHU77JQE9RIPGSURUS/ke17ZwdGBToddI8pDm48kHU9G-5fquVhsOBL4byk0QV7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UbhdWP0wyOfQlWTBoKTWCfe9pvJvwxjZ_92iR-HAgYufaHwHiHCbTxCLo3H57L5Cyw/loppetphoto_poster_angle+detail.jpg?format=750w"),
        columnSpace,

        ///ALL IN THE DETAILS
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            all_InTheDetails_LeftRowItem(),
            SizedBox(
              width: 20,
            ),
            fadeInImageHalf(constraints,
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587406500950-74HHP8MUHH2MTC7636HG/ke17ZwdGBToddI8pDm48kCQnVstGeYt8XWwGoxp8f_cUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcLthF_aOEGVRewCT7qiippvg9x7yr9GCB1FIEoSNFrAVthizQ3p-uRPkEaZVG0JL8/loppetphoto_poster_djoring%25252Bdetail2.jpg?format=500w"),
          ],
        ),

        SizedBox(
          height: 50,
        ),

        fadeNetImageH6(
          constraints,
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1516874801374-RFGBNC8OCF6HLOM0GU39/ke17ZwdGBToddI8pDm48kK-9XkuHLG0UKYVszNoreR97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0k9kZPbuygN4RSDPe_G5PO823i4FCZwXf4GlQRhJgNJJq9VLIOWaiL-CN3_RHafWow/loppetphoto_4b+copy.jpg?format=750w",
        ),

        SizedBox(
          height: 50,
        ),

        RichTextInParentheses(
          text: "Custom Snow Typography",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          width: constraints.maxWidth,
          fit: BoxFit.contain,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587798565022-JI0X9301BO4JXJWYHGEU/ke17ZwdGBToddI8pDm48kF4vMsvvtPVvER_z6V9sNad7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qN_-Z3B7EvygvPOPmeOryXqk_AnveJOY8frwCLLkHmI8n299B5M95qw1T7CKwJXPA/Loppet+2017_Event+Snowy+Typography_FINAL-06.jpg?format=750w",
        ),

        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .4,
          fit: BoxFit.fitWidth,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587274555671-AS4NYAZEHMQOEUTZS0M9/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_poster_angle+detail_flake.jpg?format=750w",
        ),

        SizedBox(
          height: 40,
        ),

        RichTextInParentheses(
          text: "The Printmaking Process",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,
        fadeNetImage(
          constraints,
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587408236779-XNOV6AATYJ4I6EIW0EK9/ke17ZwdGBToddI8pDm48kNcKbxpnv5VyW17YqWwYalF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0oycmklwMHPwSb2Cr-KYzbreo3AdJijb0m4rmHl7_a7QDQ8-aut-wbauSBr9s231pA/loppetphoto_process_rick%252Blining%252Bup%252Bboard.jpg?format=750w",
        ),
        columnSpace,

        ///The Printmaking Process images
        Container(
          height: constraints.maxWidth * .6,
          width: constraints.maxWidth,
          // color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: placeHolderImagePath,
                    width: constraints.maxWidth * .5,
                    height: constraints.maxWidth * .3 - 10,
                    fit: BoxFit.cover,
                    image:
                        "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241668534-GTFT135D1T9YXBZC7P9T/ke17ZwdGBToddI8pDm48kJbAF3wIXfPI3KZ7YcFHtUlZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpyncw1JCDmUPU_9GYCKL83k11DkbnWpd25D8SsFcoQaTAcgRNQqoIjeIA2Kt7udhCg/loppet+process+animation.gif?format=500w",
                  ),
                  FadeInImage.assetNetwork(
                    placeholder: placeHolderImagePath,
                    width: constraints.maxWidth * .5,
                    height: constraints.maxWidth * .3 - 10,
                    fit: BoxFit.cover,
                    image:
                        "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241736232-DMPCTZQ192ONBIL833TX/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/loppetphoto_process_rick+spraying+screen.jpg?format=500w",
                  ),
                ],
              ),
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                width: constraints.maxWidth * .5 - 20,
                height: constraints.maxWidth * .6,
                fit: BoxFit.fitHeight,
                image:
                    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587241789122-LM9LY1AJHDJ8CKXJVMW7/ke17ZwdGBToddI8pDm48kOfPbKToHhcJtLbUxp3qS0t7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UeuL_TaR6SLy46ah5kOzWQM0KyfsAhEY16E6RU6p6w-xd-b3ia_Eh6COzPHYPjzSMA/loppetphoto_process_rick+paint.jpg?format=500w",
              ),
            ],
          ),
        ),
        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.cover,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .25,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587274779437-PQBT05QHB1K0SUZJ8SDT/loppetphoto_9+copy.jpg?format=750w",
          imageScale: .3,
        ),

        columnSpace,
      ],
    );
  }

  Container all_InTheDetails_LeftRowItem() {
    return Container(
      width: constraints.maxWidth * .4,
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          columnSpace,
          Text(
            "ALL IN THE DETAILS",
            style: MyTextStyles().normatText.copyWith(
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
                style: MyTextStyles().sub26.copyWith(
                      color: Colors.black,
                    ),
                children: [
                  TextSpan(
                      text: "*",
                      style: MyTextStyles().sub26.copyWith(
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
                    style: MyTextStyles().normatText.copyWith(
                          color: kColorDash,
                        ),
                    children: [
                      TextSpan(
                        text:
                            " 4 colors + 1 varnish top coat applied to 130 posters\n",
                        style: MyTextStyles().normatText.copyWith(height: 1.2),
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "(using Sky-Parchtone French Paper)",
                    style: MyTextStyles().normatText.copyWith(
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
