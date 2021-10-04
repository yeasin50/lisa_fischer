import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../configs/configs.dart';
import '../../widgets/widgets.dart';
import 'widgets.dart';

class P4GShoppingActions extends StatelessWidget {
  final double maxWidth;

  const P4GShoppingActions({
    Key? key,
    required this.maxWidth,
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
        RichTextInParentheses(
          text: "Google Shopping Actions Website",
          textStyle: MyTextStyles().textParan20,
        ),

        // SizedBox(
        //   height: columnSpace.height! * .5,
        // ),

        Text(
          "Demonstrating Buy on Google destinations for merchants",
          style: MyTextStyles().subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        // ::  GIF Gshop/// Not gif but image show
        SlideShowOnActionWebSite(maxWidth: maxWidth),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Merchant Website Marketing",
          textStyle: MyTextStyles().textParan20,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        AspectRatio(
          aspectRatio: 15 / 10,
          child: BlurHash(
            hash:
                "|4Sr_pRi=9?b=S%M,\$%Lw;E1M{xt%Mxuj[ofWBax+Dt7XCRjXVWBSkRkWt_3%MRjIUM{ayf6oft7}yxuNNM{IvWAW@ayt9?aofj[WBWBWBaya}WBrSRjtSt7kEofbJs:M|~WRjM{t7a#oLWBWAof-nWBRkj[ogofRkoeWC",
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206382479-5BCIRGPFXN1ATGFIUZDB/ke17ZwdGBToddI8pDm48kPtRZ_-Of0eqM9r1dRvliRl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qoS64ZWQL6nhDAOCStJyMk7phXbdIvSPHOI4WOcEVpcoGVtCguu3ffHOCGxqAJ6Fg/yellow-16.png?format=750w",
          ),
        ),
        // _mwNImage(
        //   "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206382479-5BCIRGPFXN1ATGFIUZDB/ke17ZwdGBToddI8pDm48kPtRZ_-Of0eqM9r1dRvliRl7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qoS64ZWQL6nhDAOCStJyMk7phXbdIvSPHOI4WOcEVpcoGVtCguu3ffHOCGxqAJ6Fg/yellow-16.png?format=750w",
        // ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        /// `E-mail Marketing`
        RichTextInParentheses(
          text: "E-mail Marketing",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,
        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1617311844887-KILWYR9VHJXLAYAF3WW1/ke17ZwdGBToddI8pDm48kFmKdAJFcOk5fsAfzma6oat7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0lBmuC7q0oQgWRqy00Cl_4F3vpkLCkkli9g3-UXYeMmJ-1E2SEfIzOVqQPwVgHD5qw/buy+on+google+images+for+portfolio+email+marketing-15.png?format=750w",
        ),

        SizedBox(height: kTopLevelStackSpace * .5),

        //* `ACHETER SUR GOOGLE`

        // vertical line
        Container(
          height: columnSpace.height! * 2,
          width: 3,
          color: kColorDash.withOpacity(.2),
        ),

        columnSpace,

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
        columnSpace,

        Container(
          width: columnSpace.height! * 2,
          height: 3,
          color: kColorDash,
        ),

        columnSpace,

        ///* "Unlike the United States, Google Shopping France required a branded...
        SizedBox(
          width: maxWidth * .75,
          child: Text(
            "Unlike the United States, Google Shopping France required a branded lockup specifically for buying on Google. The wordmark, Acheter Sur Google (Buy on Google), was designed along with the solo cart to use across multiple marketing communications channels.",
            textAlign: TextAlign.center,
            style: MyTextStyles().subHeader.copyWith(
                  height: 1.7,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 5,
        ),

        RichTextInParentheses(
          text: "Wordmark ",
          textStyle: MyTextStyles().textParan20,
        ),

        // columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590430636690-L93FH562JA8FZAYH00NF/ke17ZwdGBToddI8pDm48kNThfiiC1Ss5pt91TYgjpHJ7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iy8Rj2bPXFyaluz0PeKicNeQIZkpfdXStHiv_LMkZT49G9mFXgpd49nBN3haodOMw/Acheter%2Bsur%2BGoogle_official%2Bbrand%2Blockup_for%2Bportfolio%2Bone%2Bpage-14.jpg?format=1000w",
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "YouTube France Masthead",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        _mwNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590429082173-SZYTUEL9IQ76JETF6FOQ/ke17ZwdGBToddI8pDm48kA1pvmKWYbmcHStTUhjdsVd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mIGv1bYyjw2Ebf4Z7encJBhjhWRA9vBfQElMMak6NDbLs51z2Nd-2qCPLgV8eBK_g/YT+masthead-18.png?format=1000w",
        ),
      ],
    );
  }
}
