import 'package:flutter/material.dart';
import 'package:portfolio/configs/configs.dart';
import 'P5_ytVideos/webview.dart';

get gshopLogo => FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      image:
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590218888566-5HEMUQQQEU7I5D1YZQOB/ke17ZwdGBToddI8pDm48kHgeF6xw7HSVwCYTTeQdw017gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iE65AXCN5486i28K9GUUCgVjv5ZSo0OWMgFo2W4vcGZk1Rs35klMuCxeyNIaYEgSg/buy+on+google+cart+hero+in+elevation-08.png?format=1000w",
    );

///Part5=> of Buy On Google
class P5VideoAds extends StatelessWidget {
  ///damn , FIXME:: later, aleady spent a huge time to fix this
  @override
  Widget build(BuildContext context) {
    return VideoAdsWeb();
  }
}
