import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/const.textStyles.dart';
import 'widgets.dart';

class ConnectOnAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Connect",
              style: AppTextStyles.midBlod,
            ),
            //Done:fix overflow  1104-882

            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UrlNaVigator(
                  onClick: () {
                    launch("https://twitter.com/lisasuefischer");
                  },
                  title: 'Instagram',
                ),
                UrlNaVigator(
                  onClick: () {
                    launch("https://www.linkedin.com/in/lisasuefischer");
                  },
                  title: 'Linkedin',
                ),
                UrlNaVigator(
                  onClick: () {
                    launch("https://twitter.com/lisasuefischer");
                  },
                  title: 'Twitter',
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
