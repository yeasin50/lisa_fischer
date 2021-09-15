import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

///Part5 of Buy On Google  `WebView`
class VideoAdsWeb extends StatefulWidget {
  @override
  _VideoAdsWebState createState() => _VideoAdsWebState();
}

class _VideoAdsWebState extends State<VideoAdsWeb> {
  ///main Video with max Width 😅
  // final VideoPlayerController  achetezLesProduits = VideoPlayerController (
  //   initialVideoId: "cCKWB8ZchEo",
  //   params: YoutubePlayerParams(
  //     autoPlay: false,
  //     mute: false,
  //   ),
  // );

  // ///Row[0] Left Video
  // final VideoPlayerController  regroupezTousVos = VideoPlayerController (
  //   initialVideoId: "KLEe8Bseb7Y",
  //   params: YoutubePlayerParams(
  //     autoPlay: false,
  //     mute: false,
  //   ),
  // );

  // ///Row[1] Right video
  // final VideoPlayerController  comparezLesPrix = VideoPlayerController (
  //   initialVideoId: "Jq-1O5mwXXE",
  //   params: YoutubePlayerParams(
  //     autoPlay: false,
  //     mute: false,
  //   ),
  // );

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://www.youtube.com/watch?v=hDc4dLd22lI')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
