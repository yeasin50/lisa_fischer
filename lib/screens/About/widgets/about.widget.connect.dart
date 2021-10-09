import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '/configs/configs.dart';
import 'widgets.dart';

class ConnectOnAbout extends StatelessWidget {
  final TextStyle _header = TextStyle(
    fontFamily: kFproximaNova,
    fontWeight: FontWeight.bold,
    fontSize: 19.5,
    color: Colors.black.withOpacity(.95),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Connect", style: _header),
            SizedBox(height: 10),
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
        )
      ],
    );
  }
}
