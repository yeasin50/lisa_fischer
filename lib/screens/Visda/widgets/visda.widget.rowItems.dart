import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P2VisdaRow extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P2VisdaRow({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  _maxWNImage(String url) => Image.network(
        url,
        fit: BoxFit.fitWidth,
        width: maxWidth,
      );

  List<Padding> _rowItems() {
    List<Padding> _items = [];

    visdaRowItems.forEach(
      (key, value) {
        _items.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: RowItem(
              title: "$key",
              body: value,
              isMobile: isMobile,
            ),
          ),
        );
      },
    );

    return _items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _maxWNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1583660350050-2Y6PW8T083OA8RI557VH/visd%40_visd%40+type+only+loop.gif?format=750w",
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
        if (!isMobile) _rowItemsNAMobile(),
        if (isMobile) ..._rowItems(),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
        _maxWNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586109757422-DOJAJQ3XP4FMVMU0MQEM/visd%40_logo+on+black.jpg?format=750w",
        ),
        _maxWNImage(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1586810922339-MK28Q12DO6ADFOWFNHHZ/VisD%252BSummit%252BBranding_v10-51.jpg?format=750w",
        ),
      ],
    );
  }

  /// row items of ``
  Widget _rowItemsNAMobile() {
    return SizedBox(
      width: maxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowItem(
            width: maxWidth / 4,
            title: "DATE",
            body: Text(
              "Sept - Nov 2019",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: maxWidth / 4,
            title: "ROLE",
            body: Text(
              "Brand Designer",
              style: MyTextStyles().normatText,
            ),
          ),
          RowItem(
            width: maxWidth / 4,
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
            width: maxWidth / 4,
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
