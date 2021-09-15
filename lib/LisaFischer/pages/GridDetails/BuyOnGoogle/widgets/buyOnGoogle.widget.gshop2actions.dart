import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class P4GShoppingActions extends StatelessWidget {
  get columnSpace => SizedBox(
        height: 40,
      );
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        RichTextInParentheses(
          text: "Google Shopping Actions Website",
          textStyle: MyTextStyles().textParan20,
        ),

        SizedBox(
          height: 20,
        ),

        Text(
          "Demonstrating Buy on Google destinations for merchants",
          style: MyTextStyles().subHeader,
        ),
        columnSpace,
        //Gif file Gshop
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592248061694-N5AKA85R58LLJ1VRUYIN/ke17ZwdGBToddI8pDm48kPtRZ_-Of0eqM9r1dRvliRl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0prfa1Z6IeUrCPboCAmmHZnFGLgB9zNT32qiWNNlcov3OavIiLKH5Iy-9eb-as2wug/buy+on+google+_shoppping+actionss-higher+res-31.jpg?format=2500w",
        ),
        columnSpace,
        RichTextInParentheses(
          text: "Merchant Website Marketing",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206382479-5BCIRGPFXN1ATGFIUZDB/ke17ZwdGBToddI8pDm48kPtRZ_-Of0eqM9r1dRvliRl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qoS64ZWQL6nhDAOCStJyMk7phXbdIvSPHOI4WOcEVpcoGVtCguu3ffHOCGxqAJ6Fg/yellow-16.png?format=750w",
        ),
        columnSpace,

        /// `E-mail Marketing`
        RichTextInParentheses(
          text: "E-mail Marketing",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1617311844887-KILWYR9VHJXLAYAF3WW1/ke17ZwdGBToddI8pDm48kFmKdAJFcOk5fsAfzma6oat7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0lBmuC7q0oQgWRqy00Cl_4F3vpkLCkkli9g3-UXYeMmJ-1E2SEfIzOVqQPwVgHD5qw/buy+on+google+images+for+portfolio+email+marketing-15.png?format=750w",
        ),

        SizedBox(height: kTopLevelStackSpace * .5),

        ///`ACHETER SUR GOOGLE`

        /// vertical line
        Container(
          height: 45,
          width: 3,
          color: kColorDash.withOpacity(.2),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "ACHETER SUR GOOGLE",
          style: MyTextStyles().subtitle12,
        ),

        SizedBox(height: 7),

        Text(
          "Buy on Google France",
          style: GoogleFonts.lato(
            fontSize: 26,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 20),
        Container(
          width: 30,
          height: 3,
          color: kColorDash,
        ),

        columnSpace,

        /// "Unlike the United States, Google Shopping France required a branded...
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 500,
          ),
          child: Text(
            "Unlike the United States, Google Shopping France required a branded lockup specifically for buying on Google. The wordmark, Acheter Sur Google (Buy on Google), was designed along with the solo cart to use across multiple marketing communications channels.",
            textAlign: TextAlign.center,
            style: MyTextStyles().subHeader.copyWith(
                  height: 1.7,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
          ),
        ),

        SizedBox(height: 100),

        RichTextInParentheses(
          text: "Wordmark ",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590430636690-L93FH562JA8FZAYH00NF/ke17ZwdGBToddI8pDm48kNThfiiC1Ss5pt91TYgjpHJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iy8Rj2bPXFyaluz0PeKicNeQIZkpfdXStHiv_LMkZT49G9mFXgpd49nBN3haodOMw/Acheter%2Bsur%2BGoogle_official%2Bbrand%2Blockup_for%2Bportfolio%2Bone%2Bpage-14.jpg?format=1000w",
        ),

        columnSpace,

        RichTextInParentheses(
          text: "YouTube France Masthead",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590429082173-SZYTUEL9IQ76JETF6FOQ/ke17ZwdGBToddI8pDm48kA1pvmKWYbmcHStTUhjdsVd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mIGv1bYyjw2Ebf4Z7encJBhjhWRA9vBfQElMMak6NDbLs51z2Nd-2qCPLgV8eBK_g/YT+masthead-18.png?format=1000w",
        ),
      ],
    );
  }
}
