import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../configs/configs.dart';
import '../../../../widgets/widgets.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';
import 'widgets.dart';

class P4GShoppingActions extends StatelessWidget {
  final double maxWidth;

  const P4GShoppingActions({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "Google Shopping Actions Website",
          textStyle: AppTextStyles.textParan20,
        ),

        SizedBox(
          height: columnSpace.height! * .5,
        ),

        Text(
          "Demonstrating Buy on Google destinations for merchants",
          style: AppTextStyles.subHeader,
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
          textStyle: AppTextStyles.textParan20,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        mwBHImage(
          hash: merchantWebsiteMarketing.hash,
          imageUrl: merchantWebsiteMarketing.imageUrl,
          aspectR: 15 / 10,
          width: maxWidth,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        /// `E-mail Marketing`
        RichTextInParentheses(
          text: "E-mail Marketing",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,
        mwBHImage(
          imageUrl: emailMarketing.imageUrl,
          hash: emailMarketing.hash,
          aspectR: 750 / 490,
          width: maxWidth,
        ),

        SizedBox(height: columnSpace.height! * 3),

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
          style: AppTextStyles.subtitle12,
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
            style: AppTextStyles.subHeader.copyWith(
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
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        mwBHImage(
          imageUrl: acheterSurGoogle.imageUrl,
          hash: acheterSurGoogle.hash,
          aspectR: 100 / 78,
          width: maxWidth,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "YouTube France Masthead",
          textStyle: AppTextStyles.textParan20,
        ),

        columnSpace,

        mwBHImage(
          hash: ytMastHead.hash,
          imageUrl: ytMastHead.imageUrl,
          aspectR: 1000 / 642,
          width: maxWidth,
        ),
      ],
    );
  }
}
