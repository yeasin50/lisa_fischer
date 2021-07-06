import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/fadeIn_net_image.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/big_title_with_sub.dart';
import 'package:portfolio/config/constants.dart';

class P1VisdIntro extends StatelessWidget {
  final BoxConstraints constraints;

  const P1VisdIntro({Key? key, required this.constraints}) : super(key: key);
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
                title: "VisD@",
                subtitle: "BRANDING / VISUAL DESIGN",
              ),
              columnSpace,
              Text(
                "Google’s 1st Visual Design Summit",
                style: MyTextStyles().textParan20,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "In Fall 2019, Google held its first-ever Visual Design Summit, a day-long event for Google’s Visual Designers to come together as one creative community. I had the pleasure of designing the brand identity from ideation to execution.",
                style: MyTextStyles().normatText,
              ),
              columnSpace,
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "* ",
                      style: MyTextStyles().normatText.copyWith(
                            color: kColorDash,
                          ),
                    ),
                    TextSpan(
                      text: "VisD@ = Visual Designers at Google",
                      style: MyTextStyles().normatText.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ],
                ),
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
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1583660350050-2Y6PW8T083OA8RI557VH/visd%40_visd%40+type+only+loop.gif?format=750w",
        ),
      ],
    );
  }
}
