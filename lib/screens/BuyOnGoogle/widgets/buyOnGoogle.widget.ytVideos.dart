import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../configs/config.constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

///Part5=> of Buy On Google []
class VideoAdsWeb extends StatefulWidget {
  final double maxWidth;

  final bool isMobile;

  const VideoAdsWeb({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);
  @override
  _VideoAdsWebState createState() => _VideoAdsWebState();
}

///FIXME: Scroll issue
class _VideoAdsWebState extends State<VideoAdsWeb> {
  ///* main Video with max Width 😅
  final YoutubePlayerController achetezLesProduits = YoutubePlayerController(
    initialVideoId: "cCKWB8ZchEo",
    params: YoutubePlayerParams(
      autoPlay: false,
      mute: false,
    ),
  );

  ///* Row[0] Left Video
  final YoutubePlayerController regroupezTousVos = YoutubePlayerController(
    initialVideoId: "KLEe8Bseb7Y",
    params: YoutubePlayerParams(
      autoPlay: false,
      mute: false,
    ),
  );

  //* Row[1] Right video
  final YoutubePlayerController comparezLesPrix = YoutubePlayerController(
    initialVideoId: "Jq-1O5mwXXE",
    params: YoutubePlayerParams(
      autoPlay: false,
      mute: false,
    ),
  );

  List<YoutubePlayerController> get _controllers =>
      [achetezLesProduits, regroupezTousVos, comparezLesPrix];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        columnSpace,

        YTVideoScrollIssueWrapper(
          controller: _controllers[0],
        ),

        columnSpace,

        if (!widget.isMobile)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: widget.maxWidth / 2 - columnSpace.height! * .5,
                child: YTVideoScrollIssueWrapper(
                  controller: _controllers[1],
                ),
              ),
              SizedBox(
                width: widget.maxWidth / 2 - columnSpace.height! * .5,
                child: YTVideoScrollIssueWrapper(
                  controller: _controllers[2],
                ),
              ),
            ],
          )
        else ...[
          YTVideoScrollIssueWrapper(
            controller: _controllers[1],
          ),
          columnSpace,
          YTVideoScrollIssueWrapper(
            controller: _controllers[2],
          ),
        ],

        columnSpace,

        //* GShop logo
        // AspectRatio(
        //   aspectRatio: 25 / 12,
        //   child: BlurHash(
        //     hash: gshopPNG(width: widget.maxWidth).hash,
        //     image: gshopPNG(width: widget.maxWidth).imageUrl,
        //     // gshopPNG(width: widget.maxWidth).imageUrl,
        //     imageFit: BoxFit.fitWidth,
        //   ),
        // ), /// Issue with png
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206819594-2Y1OOQMSW6IACML3OET9/ke17ZwdGBToddI8pDm48kHgeF6xw7HSVwCYTTeQdw017gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iE65AXCN5486i28K9GUUCgVjv5ZSo0OWMgFo2W4vcGZk1Rs35klMuCxeyNIaYEgSg/buy+on+google+cart+hero+in+elevation-08.png?format=${widget.maxWidth}w",
          width: widget.maxWidth * .4,
          height: widget.maxWidth * .4,
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  @override
  void dispose() {
    // _controllers.forEach((element) {
    //   element.close();
    // });
    super.dispose();
  }
}
