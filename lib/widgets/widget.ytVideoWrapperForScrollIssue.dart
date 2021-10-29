import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///* Cheating 🤐
///* remove when we can fix Scroll-issue on yt package
class YTVideoScrollIssueWrapper extends StatelessWidget {
  const YTVideoScrollIssueWrapper({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        YoutubePlayerIFrame(
          controller: controller,
          aspectRatio: 16 / 9,
          gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{},
        ),
        PointerInterceptor(
          child: AspectRatio(
            aspectRatio: 16 / 9,
          ),
        ),
        GestureDetector(
          onTap: () {
            print(controller.initialVideoId);

            launch(
              "https://www.youtube.com/watch?v=${controller.initialVideoId}",
            );
          },
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }
}
