import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../configs/configs.dart';
import '../../../widgets/widgets.dart';
import '../utils/rowItems.utils.dart';

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
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1588445233651-7YV2Z0QRSRKL2HOIRUVJ/image-asset.png?format=750w",
          fit: BoxFit.fitWidth,
          width: maxWidth,
        ),
        columnSpace,
        columnSpace,
        if (!isMobile) _rowItemsNAMobile(),
        if (isMobile) ..._rowItems(),
        columnSpace,
        columnSpace,
        Image.network(
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1588448894297-OUXN5EOFGSB9YNY2I6UJ/leveled_jpgs+for+portfolio_leveled+logo+blue+bg.png?format=750w",
          fit: BoxFit.fitWidth,
          width: maxWidth,
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
