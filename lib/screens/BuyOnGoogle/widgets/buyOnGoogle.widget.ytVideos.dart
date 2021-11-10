import 'package:flutter/material.dart';

import '../../../configs/config.constants.dart';
import '../../../widgets/widgets.dart';

///Part5=> of Buy On Google []
class VideoAdsWeb extends StatelessWidget {
  final double maxWidth;

  final bool isMobile;

  VideoAdsWeb({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  ///* main Video with max Width 😅 ,    Row[0] Left Video ,Row[1] Right video
  final List<String> adsVideoId = ['cCKWB8ZchEo', 'KLEe8Bseb7Y', 'Jq-1O5mwXXE'];

  @override
  build(BuildContext context) {
    return Column(
      children: [
        columnSpace,

        YTVideoScrollIssueWrapper(
          key: UniqueKey(),
          videoId: adsVideoId[0],
        ),

        columnSpace,

        if (!isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: maxWidth / 2 - columnSpace.height! * .5,
                child: YTVideoScrollIssueWrapper(
                  videoId: adsVideoId[1],
                ),
              ),
              SizedBox(
                width: maxWidth / 2 - columnSpace.height! * .5,
                child: YTVideoScrollIssueWrapper(
                  videoId: adsVideoId[2],
                ),
              ),
            ],
          )
        else ...[
          YTVideoScrollIssueWrapper(
            videoId: adsVideoId[1],
          ),
          columnSpace,
          YTVideoScrollIssueWrapper(
            videoId: adsVideoId[2],
          ),
        ],

        columnSpace,

        //* GShop logo
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206819594-2Y1OOQMSW6IACML3OET9/ke17ZwdGBToddI8pDm48kHgeF6xw7HSVwCYTTeQdw017gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iE65AXCN5486i28K9GUUCgVjv5ZSo0OWMgFo2W4vcGZk1Rs35klMuCxeyNIaYEgSg/buy+on+google+cart+hero+in+elevation-08.png?format=${maxWidth}w",
          width: maxWidth * .4,
          height: maxWidth * .4,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
