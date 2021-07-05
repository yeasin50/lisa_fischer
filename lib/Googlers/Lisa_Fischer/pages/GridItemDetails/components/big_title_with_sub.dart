import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/config/constants.dart';

///for desktop and tablet mode it is always talking half screens' width
///
class TitleWithSub extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleWithSub({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titleTextStyle,
          ),

          SizedBox(height: 10),

          /// `SubTitle`
          EasyRichText(
            subtitle,
            textAlign: TextAlign.left,
            defaultStyle: MyTextStyles().subtitle12,
            patternList: [
              EasyRichTextPattern(
                targetString: "/",
                hasSpecialCharacters: true,
                matchLeftWordBoundary: false,
                style: subTitleTextStyle.copyWith(
                  color: kColorDash,
                ),
              ),
            ],
          ),
        ]);
  }
}
