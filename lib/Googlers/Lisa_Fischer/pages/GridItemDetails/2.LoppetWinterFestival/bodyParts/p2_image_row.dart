import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/text_styles.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/GridItemDetails/components/rowItem.dart';
import 'package:portfolio/config/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class P2ImageAndRow extends StatefulWidget {
  final BoxConstraints constraints;

  const P2ImageAndRow({Key? key, required this.constraints}) : super(key: key);

  @override
  _P2ImageAndRowState createState() => _P2ImageAndRowState();
}

class _P2ImageAndRowState extends State<P2ImageAndRow> {
  bool _hoverItems = false;

  /// Press and Links +> Hover Text Effect
  _textStyle(bool _isHover) {
    if (_isHover)
      return MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w500,
            color: kColorDash,
          );
    else
      return MyTextStyles().normatText.copyWith(
            fontWeight: FontWeight.w500,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          // just full screen view according to website
          onTap: () => launch(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587410695918-JVYIF2MWQTP0LLA3JQTC/ke17ZwdGBToddI8pDm48kMBU_r1tzMd4QwEaiVpd1vh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryB1dMAs-2ojG-6zt94yw4AbCPjKOpSfnmOGIuFB5W9LXA/loppetphoto_1.jpg?format=2500w"),
          child: FadeInImage.assetNetwork(
            placeholder: placeHolderImagePath,
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587410695918-JVYIF2MWQTP0LLA3JQTC/ke17ZwdGBToddI8pDm48kMBU_r1tzMd4QwEaiVpd1vh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryB1dMAs-2ojG-6zt94yw4AbCPjKOpSfnmOGIuFB5W9LXA/loppetphoto_1.jpg?format=750w",
            fit: BoxFit.fitWidth,
            width: widget.constraints.maxWidth,
            height: widget.constraints.maxWidth * .4,
          ),
        ),
        columnSpace,
        _rowItems(widget.constraints),
        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          width: widget.constraints.maxWidth,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587270278664-X4Z6AW4RYTS4AER4DIOF/ke17ZwdGBToddI8pDm48kN81e1Vehv44dLGKecSkzRgUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYy7Mythp_T-mtop-vrsUOmeInPi9iDjx9w8K4ZfjXt2do-xzQFBgqMOPl73Fn7DbanJ017ygtFq0Te_s3ddcP7ZCjLISwBs8eEdxAxTptZAUg/loppet+animation+banner+skiier.gif?format=1000w",
          fit: BoxFit.cover,
        ),
        columnSpace,
      ],
    );
  }

  /// row items of `Date Role Press Links`
  Widget _rowItems(BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowItem(
            width: constraints.maxWidth * .2,
            title: "DATE",
            body: Text(
              "Winter 2017",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: constraints.maxWidth * .2,
            title: "ROLE",
            body: Text(
              "Designer / Illustrator",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: constraints.maxWidth * .2,
            title: "AGENCY",
            body: RichText(
              text: TextSpan(
                // style: MyTextStyles().normatText.copyWith(
                //       fontWeight: FontWeight.w500,
                //     ),
                children: [
                  TextSpan(
                    text: "Duffy Design ",
                    style: _textStyle(_hoverItems),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launch(
                            "https://www.adweek.com/brand-marketing/google-unveils-new-features-to-make-shopping-easier-across-apps-and-search-results/",
                          ),
                    onEnter: (event) => setState(() => _hoverItems = true),
                    onExit: (event) => setState(() => _hoverItems = false),
                  ),
                  TextSpan(
                    text: "Minneapolis, MN",
                    style: MyTextStyles().normatText,
                  ),
                ],
              ),
            ),
          ),

          ///"About Google Shopping, Google Blog, Google Shopping Actions",
          RowItem(
            width: constraints.maxWidth * .2,
            title: "DELIVERABLES",
            body: RichText(
              text: TextSpan(
                style: MyTextStyles().normatText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                children: [
                  TextSpan(
                    text:
                        "Screen printed posters, Event branding (2017), Custom typography, Illustration + iconography (used throughout marketing collateral)",
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
