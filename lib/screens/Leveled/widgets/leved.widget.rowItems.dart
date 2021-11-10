import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../widgets/widgets.dart';
import '../utils/rowItems.utils.dart';
import '../utils/utils.dart';

class P2LeveledRow extends StatelessWidget {
  //* avoiding using another layoutBuilder
  final double maxWidth;
  final bool isMobile;

  const P2LeveledRow({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  List<Padding> _rowItems() {
    List<Padding> _items = [];

    leveledRowItemsData.forEach((key, value) {
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
    });

    return _items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mwBHImage(
          hash: makeGoodOnGoodIntent.hash,
          imageUrl: makeGoodOnGoodIntent.imageUrl,
          aspectR: 750 / 332,
        ),
        columnSpace,
        columnSpace,
        if (!isMobile) _rowItemsNAMobile() else ..._rowItems(),
        columnSpace,
        columnSpace,
        mwBHImage(
          hash: levedLogoBlueBG.hash,
          imageUrl: levedLogoBlueBG.imageUrl,
          aspectR: 750 / 355,
        ),
        columnSpace,
      ],
    );
  }

  /// row items of ``
  Widget _rowItemsNAMobile() {
    return SizedBox(
      width: maxWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          RowItem(
            title: "DATE",
            body: Text(
              "March 2017",
              style: AppTextStyles.normal,
            ),
          ),
          RowItem(
            title: "ROLE",
            body: Text(
              "Brand Designer",
              style: AppTextStyles.normal,
            ),
          ),
          RowItem(
            title: "AGENCY",
            body: RichText(
              text: TextSpan(
                style: AppTextStyles.normal.copyWith(
                  fontWeight: FontWeight.w600,
                  height: 1.7,
                ),
                children: [
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Duffy Design\n",
                        style: AppTextStyles.normal,
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
                        style: AppTextStyles.normal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          RowItem(
            title: "TEAM",
            body: RichText(
              text: TextSpan(
                style: AppTextStyles.normal.copyWith(
                  fontWeight: FontWeight.w600,
                  height: 1.7,
                ),
                children: [
                  TextSpan(
                    text: "Creative Direction _",
                    children: [
                      TextSpan(
                        text: " Alan Leusink\n",
                        style: AppTextStyles.normal,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "Design Director  _",
                    children: [
                      TextSpan(
                        text: " Joseph Duffy\n",
                        style: AppTextStyles.normal,
                      ),
                    ],
                  ),
                  TextSpan(
                    text: "UX Designer  _",
                    children: [
                      TextSpan(
                        text: " Beccah Erickson",
                        style: AppTextStyles.normal,
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
