import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/rowItem.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class P2LeveledRow extends StatelessWidget {
  final BoxConstraints constraints;

  const P2LeveledRow({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _rowItems(constraints),
        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          width: constraints.maxWidth,
          fit: BoxFit.fitWidth,
          height: constraints.maxWidth * .4,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1588448894297-OUXN5EOFGSB9YNY2I6UJ/leveled_jpgs+for+portfolio_leveled+logo+blue+bg.png?format=750w",
        ),
      ],
    );
  }

  /// row items of ``
  Widget _rowItems(BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowItem(
            width: constraints.maxWidth * .2,
            title: "DATE",
            body: Text(
              "March 2017",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: constraints.maxWidth * .2,
            title: "ROLE",
            body: Text(
              "Brand Designer",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: constraints.maxWidth * .2,
            title: "AGENCY",
            body: RichText(
              text: TextSpan(
                style: MyTextStyles().normatText.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 1.7,
                    ),
                children: [
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Duffy Design\n",
                        style: MyTextStyles().normatText,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            launch("https://duffy.com/");
                          },
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "Minneapolis, MN",
                    children: [
                      TextSpan(
                        text: " Kyle Hoyt\n",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          RowItem(
            width: constraints.maxWidth * .2,
            title: "TEAM",
            body: RichText(
              text: TextSpan(
                style: MyTextStyles().normatText.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 1.7,
                    ),
                children: [
                  TextSpan(
                    text: "Creative Direction _",
                    children: [
                      TextSpan(
                        text: " Alan Leusink\n",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "Design Director  _",
                    children: [
                      TextSpan(
                        text: " Joseph Duffy\n",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "UX Designer  _",
                    children: [
                      TextSpan(
                        text: " Beccah Erickson",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
