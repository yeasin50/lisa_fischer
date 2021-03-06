import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/constants.dart';
import 'widgets.dart';

class ContactOnAbout extends StatelessWidget {
  final String _url = "mailto:lisasuefischer@gmail.com?";

  _launchMail() async =>
      await canLaunch(_url) ? launch(_url) : print("Failed to Launch mail");
//// By default, Android opens up a browser when handling URLs. You can pass `forceWebView: true`

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Contact",
              style: AppTextStyles.midBlod,
            ),
            SizedBox(height: 10),
            UrlNaVigator(
              onClick: () {},
              title: '908.723.4511',
            ),
            UrlNaVigator(
              onClick: _launchMail,
              title: 'lisasuefischer@gmail.com',
            ),
          ],
        )
      ],
    );
  }
}
