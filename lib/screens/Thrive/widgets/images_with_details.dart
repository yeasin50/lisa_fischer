import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import 'widgets.dart';


class ImagesWithDetails extends StatelessWidget {
  final BoxConstraints constraints;

  /// am optional may need, passing for avoiding extra query
  final bool isMobile;

  const ImagesWithDetails({
    Key? key,
    required this.constraints,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...[
          Image.asset(
            "images/thrive/p1.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p2.jpg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p3_idea.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),

          Image.asset(
            "images/thrive/thrive_research_logo.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          //DONE: P4 add slide show
          ImageSliderOnThrive(),
          Image.asset(
            "images/thrive/p5_desing_problem.jpg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p6_moodBoard.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p7_designObjective.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p8_identity.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p9_parkMode.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),

          //TODO:: gif

          Image.asset(
            "images/thrive/p11_icons.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p12_EnvGraphics.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p13_wayFinding.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),

          ///Done:: gif
          AspectRatio(
            aspectRatio: 1000 / 563,
            child: BlurHash(
              hash:
                  "|13Te[oy8yR8*Gt%R6R8RRtkafVtoyoyVue.oyahHuafyooyQ:V[kVkCoyVtkCo|VtaKo|WYVtoxRQaftQoxVuVukCo{j?WYf6oxbHV]j?oyahV[WEkBocV]WCoxkBV]f6kWayaykBfkafjskBa#tjfQVtfPozfRjYfPWE",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1460442092110-BB8RD9VZ9EUC10QS4CUV/image-asset.gif?format=1000w",
            ),
          ),

          Image.asset(
            "images/thrive/p15_parkApp.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),

          ///TODO:: gif park_map_header.jpeg
          Image.asset(
            "images/thrive/park_map_header.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          AspectRatio(
            aspectRatio: 1000 / 563,
            child: BlurHash(
              hash:
                  "|RJuDYE200x]IU?ak9xtWA_4odM{ofM{t7azoff700xu?uRkxuIVoeWBofD~j^xvoft8WTfkfhWC4ot7%Mj]xuV[j@V[aeD%kCt8j[ofWCjuWBae%LofoMkCWCoej@axWBM|t7xua#oeWBayWBf6%LWCRjoeWCayWCayj[",
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1460609897700-DB9HCH3NMS2S01CR9YDG/image-asset.gif?format=1000w",
            ),
          ),

          ///TODO:: Video
          Image.asset(
            "images/thrive/p18_tShirts.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p19_tShritsM.jpg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p20_thrive_holding_bag.jpg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p21_memorabillia3.jpg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
          Image.asset(
            "images/thrive/p22_thrive_logo.jpeg",
            fit: BoxFit.fitWidth,
            width: constraints.maxWidth,
          ),
        ].map(
          (e) => Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8,
            ),
            child: e,
          ),
        )
      ],
    );
  }
}
