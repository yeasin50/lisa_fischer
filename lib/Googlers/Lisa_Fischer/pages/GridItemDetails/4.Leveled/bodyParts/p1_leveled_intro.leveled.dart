import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/fadeIn_net_image.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/big_title_with_sub.dart';
import 'package:portfolio/config/constants.dart';

class P1LeveledIntro extends StatelessWidget {
  final BoxConstraints constraints;

  const P1LeveledIntro({Key? key, required this.constraints}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: constraints.maxWidth * .4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleWithSub(
                title: "Leveled",
                subtitle: "BRANDING / DIGITAL",
              ),
              columnSpace,
              Text(
                "Helping leaders and businesses make good on good intent.",
                style: MyTextStyles().textParan20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Leveled is a Minneapolis-based consulting firm that helps leaders and businesses make good on good intent by coaching leaders and teams to have greater professional and personal impact. ",
                style: MyTextStyles().normatText,
              ),
              columnSpace,
              Text(
                "As a new business, Leveled sought out a brand identity to establish and differentiate the female-run firm in its communications, messaging and orchestrated events.",
                style: MyTextStyles().normatText,
              ),
            ],
          ),
        ),
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fit: BoxFit.fitWidth,
          width: constraints.maxWidth,
          height: constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1588445233651-7YV2Z0QRSRKL2HOIRUVJ/image-asset.png?format=750w",
        ),
      ],
    );
  }
}
