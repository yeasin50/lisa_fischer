import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constants.dart';
 

final _linkTextStyle = AppTextStyles.normal.copyWith(
  fontWeight: FontWeight.w500,
  color: kColorDash,
);

final Map<String, Widget> buyOnGoogleRowitems = {
  'DATE': Text(
    "March 2018- April 2019",
    style: AppTextStyles.normal,
  ),
  'ROLE': Text(
    "Visual + UX Designer / Brand Strategist",
    style: AppTextStyles.normal,
  ),
  'PRESS': RichText(
    text: TextSpan(
      // style: MyTextStyles().normatText.copyWith(
      //       fontWeight: FontWeight.w500,
      //     ),
      children: [
        TextSpan(
          text: "AdWeek, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/",
                ),
        ),
        TextSpan(
          text: "TechCrunch, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://techcrunch.com/2019/10/03/redesigned-google-shopping-goes-live-with-price-tracking-google-lens-for-outfits-and-more/",
                ),
        ),
        TextSpan(
          text: "Verge, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.theverge.com/2019/10/3/20897652/google-shopping-redesign-price-tracking-personalized-homepage-lens-express",
                ),
        ),
        TextSpan(
          text: "Engadget, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.engadget.com/2019-10-03-google-shopping-product-price-tracking.html",
                ),
        ),
        TextSpan(
          text: "Search Engine Land",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://searchengineland.com/googles-new-take-on-shopping-goes-live-in-u-s-322891",
                ),
        ),
      ],
    ),
  ),
  'LINKS': RichText(
    text: TextSpan(
      style: AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
      ),
      children: [
        TextSpan(
          text: "About Google Shopping, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://shopping.google.com/u/0/about",
                ),
        ),
        TextSpan(
          text: "Google Blog, ",
          style: _linkTextStyle,
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.blog.google/products/shopping/find-best-prices-and-places-buy-google-shopping/",
                ),
        ),
        TextSpan(
          text: "Google Shopping Actions",
          recognizer: TapGestureRecognizer()
            ..onTap = () => launch(
                  "https://www.google.com/retail/solutions/shopping-actions/",
                ),
        ),
      ],
    ),
  ),
};
