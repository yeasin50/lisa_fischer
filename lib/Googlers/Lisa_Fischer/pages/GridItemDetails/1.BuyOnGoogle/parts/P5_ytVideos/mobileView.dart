// ///Part5 of Buy On Google =>`Moblile View`
import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/text_in_parentheses.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../p5_yt_videos.dart';


class VideoAdsMobileView extends StatelessWidget {
  ///main Video with max Width 😅
  final YoutubePlayerController achetezLesProduits = YoutubePlayerController(
    initialVideoId: "cCKWB8ZchEo",
    flags: YoutubePlayerFlags(
      hideControls: false,
      controlsVisibleAtStart: true,
      autoPlay: false,
      mute: false,
    ),
  );

  ///Row[0] Left Video
  final YoutubePlayerController regroupezTousVos = YoutubePlayerController(
    initialVideoId: "KLEe8Bseb7Y",
    flags: YoutubePlayerFlags(
      autoPlay: false,
    ),
  );

  ///Row[1] Right video
  final YoutubePlayerController comparezLesPrix = YoutubePlayerController(
    initialVideoId: "Jq-1O5mwXXE",
    flags: YoutubePlayerFlags(
      autoPlay: false,
    ),
  );

  get achetezYoutubePlayer => YoutubePlayer(
        controller: achetezLesProduits,
        showVideoProgressIndicator: true,
        //   onReady: () => print('Player is ready.'),
        //   onEnded: (_) => print("ENd of Video"),
      );

  get regroupezTousVosYotubePlayer => YoutubePlayer(
        controller: regroupezTousVos,
        showVideoProgressIndicator: true,
        // onReady: () => print('Player is ready.'),
        // onEnded: (_) => print("ENd of Video"),
      );

  get comparezLesPrixYtPlayer => YoutubePlayer(
        controller: comparezLesPrix,
        showVideoProgressIndicator: true,
        // onReady: () => print('Player is ready.'),
        // onEnded: (_) => print("ENd of Video"),
      );

  ///Over 40 million views to date...
  get videoCreator => EasyRichText(
        "Over 40 million views to date (videos created by MC Saatchi Group).",
        patternList: [
          EasyRichTextPattern(
            targetString: "MC Saatchi Group",
            style: normalStyle.copyWith(
              color: kColorDash,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => launch(
                    "https://mcsaatchigad.fr/projet/acheter-sur-google/",
                  ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///`Video Ads`
        RichTextInParentheses(
          text: "Video Ads",
        ),

        columnSpace,
        videoCreator,
        columnSpace,

        ///`YouTube Videos`
        achetezYoutubePlayer,
        columnSpace,

        ///rest 2 videos
        regroupezTousVosYotubePlayer,
        columnSpace,
        comparezLesPrixYtPlayer,

        columnSpace,
        gshopLogo,

        ///TODO: Add GridItems=>Works
      ],
    );
  }
}
