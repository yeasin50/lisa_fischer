import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class P2VisdaRow extends StatelessWidget {
  final BoxConstraints constraints;

  const P2VisdaRow({
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
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586109757422-DOJAJQ3XP4FMVMU0MQEM/visd%40_logo+on+black.jpg?format=750w",
        ),
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          width: constraints.maxWidth,
          fit: BoxFit.fitWidth,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586810922339-MK28Q12DO6ADFOWFNHHZ/VisD%252BSummit%252BBranding_v10-51.jpg?format=750w",
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
              "Sept - Nov 2019",
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
            title: "TEAM",
            body: RichText(
              text: TextSpan(
                style: MyTextStyles().normatText.copyWith(
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                children: [
                  TextSpan(
                    text: "Creative Direction _",
                    children: [
                      TextSpan(
                        text: " Brad Aldridge\n",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "Illustration  _",
                    children: [
                      TextSpan(
                        text: " Kyle Hoyt\n",
                        style: MyTextStyles().normatText,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "Motion Design  _",
                    children: [
                      TextSpan(
                        text: " Eric Henry",
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
            title: "DELIVERABLES",
            body: RichText(
              text: TextSpan(
                style: MyTextStyles().normatText.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                children: [
                  TextSpan(
                    text:
                        "Brand Identity, Website, Wayfinding, Summit Collateral, Deck Template, Environmental Graphics",
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
