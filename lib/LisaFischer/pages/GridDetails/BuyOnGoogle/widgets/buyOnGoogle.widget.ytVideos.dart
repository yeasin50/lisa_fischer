import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../../../../../configs/config.constants.dart';
import '../../../../../widgets/widgets.dart';
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
          ),

        if (widget.isMobile) ...[
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

        Image.network(
          gshopImagePath,
          width: widget.maxWidth * .6,
          fit: BoxFit.fitWidth,
        )
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
