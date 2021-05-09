import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/custom_route.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  static final String routeName = "page1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text("Page 1"),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () =>
                  Navigator.of(context).push(pageRouteFromRT(() => Page2(),)),
              child: Text("Push =>2"),
            ),
          ],
        ),
      ),
    );
  }
}
