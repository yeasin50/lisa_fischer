import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../screens/BuyOnGoogle/utils/utils.dart';
import '../utils/utils.dart';

///* Cheating 🤐
///* remove when we can fix Scroll-issue on yt package
class YTVideoScrollIssueWrapper extends StatelessWidget {
  const YTVideoScrollIssueWrapper({
    Key? key,
    required this.videoId,
  }) : super(key: key);

  final String videoId;

  YoutubePlayerIFrame get youtubePlayer => YoutubePlayerIFrame(
        controller: YoutubePlayerController(
          initialVideoId: videoId,
        ),
        aspectRatio: 16 / 9,
        gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{},
      );

  void _openVideoOnDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: AspectRatio(
          aspectRatio: 16 / 9,
          child: youtubePlayer,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _openVideoOnDialog(context),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          alignment: Alignment.center,
          children: [
            mwBHImage(
              hash: ytMastHead.hash,
              imageUrl: ytVideoThumbnail(
                videoId: videoId,
              ),
            ),
            Icon(
              Icons.play_circle_fill_rounded,
              size: 64,
            ),
          ],
        ),
      ),
    );
  }
}
