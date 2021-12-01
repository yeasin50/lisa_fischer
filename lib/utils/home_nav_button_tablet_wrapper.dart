import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/constants.dart';
import '../providers/provider.navigator.dart';

Widget tabletWrapperHomeButton(BuildContext context) {
  return Consumer<PageNotifier>(
    builder: (context, value, child) {
      final pageName = value.pageName;

      return pageName != null &&
              pageName != PageName.about &&
              pageName != PageName.contact
          ? InkWell(
              onTap: () {
                value.changeScreen(pageName: null); //null is home
              },
              hoverColor: Colors.pink,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black,
                child: Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
              ),
            )
          : SizedBox();
    },
  );
}
