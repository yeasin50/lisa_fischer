import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';
import '../utils/loppetWinterFestival.utils.rowData.dart';

class P2ImageAndRow extends StatefulWidget {
  final double maxWidth;
  final bool isMobile;

  const P2ImageAndRow({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  @override
  _P2ImageAndRowState createState() => _P2ImageAndRowState();
}

class _P2ImageAndRowState extends State<P2ImageAndRow> {
  bool _hoverItems = false;

  /// Press and Links +> Hover Text Effect
  _textStyle(bool _isHover) {
    if (_isHover)
      return AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
        color: kColorDash,
      );
    else
      return AppTextStyles.normal.copyWith(
        fontWeight: FontWeight.w500,
      );
  }

  List<Padding> _rowItemsMobileView() {
    List<Padding> _items = [];

    loppetWinterFestivalRowItems.forEach(
      (key, value) {
        _items.add(
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: RowItem(
              title: "$key",
              body: value,
              isMobile: widget.isMobile,
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
        InkWell(
          // just full screen view according to website
          onTap: () => launch(
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587410695918-JVYIF2MWQTP0LLA3JQTC/ke17ZwdGBToddI8pDm48kMBU_r1tzMd4QwEaiVpd1vh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryB1dMAs-2ojG-6zt94yw4AbCPjKOpSfnmOGIuFB5W9LXA/loppetphoto_1.jpg?format=2500w"),
          child: Image.network(
            "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1587410695918-JVYIF2MWQTP0LLA3JQTC/ke17ZwdGBToddI8pDm48kMBU_r1tzMd4QwEaiVpd1vh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0hHMyhIh2kKzuOL3ydJCryB1dMAs-2ojG-6zt94yw4AbCPjKOpSfnmOGIuFB5W9LXA/loppetphoto_1.jpg?format=750w",
            fit: BoxFit.fitWidth,
            width: widget.maxWidth,
            height: widget.maxWidth * .4,
          ),
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
        if (!widget.isMobile) _rowItemsNAMobile(widget.maxWidth),
        if (widget.isMobile) ..._rowItemsMobileView(),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }

  /// row items of `Date Role Press Links`
  Widget _rowItemsNAMobile(double maxWidth) {
    final _width = maxWidth / 4;
    return Container(
      width: maxWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RowItem(
            width: _width,
            title: "DATE",
            body: Text(
              "Winter 2017",
              style: AppTextStyles.normal,
            ),
          ),
          RowItem(
            width: _width,
            title: "ROLE",
            body: Text(
              "Designer / Illustrator",
              style: AppTextStyles.normal,
            ),
          ),
          RowItem(
            width: _width,
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
                    style: AppTextStyles.normal,
                  ),
                ],
              ),
            ),
          ),

          ///"About Google Shopping, Google Blog, Google Shopping Actions",
          RowItem(
            width: _width,
            title: "DELIVERABLES",
            body: RichText(
              text: TextSpan(
                style: AppTextStyles.normal.copyWith(
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
