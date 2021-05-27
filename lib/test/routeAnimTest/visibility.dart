import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class AnimOnVisible extends StatefulWidget {
  @override
  _AnimOnVisibleState createState() => _AnimOnVisibleState();
}

class _AnimOnVisibleState extends State<AnimOnVisible> {
  double width = 100;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              height: 200,
              width: 200,
              color: Colors.amber,
            ),
            Center(child: Text("A")),
            Container(
              height: 200,
              width: 200,
              color: Colors.redAccent,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
            Row(
              children: [
                VisibilityDetector(
                  key: Key("animContainer"),
                  onVisibilityChanged: (info) {
                    print(
                      info.toString() + info.visibleBounds.height.toString(),
                    );

                    if (info.visibleBounds.height >= 200)
                      setState(() => width = 250);

                    if (info.visibleBounds.height == 0) {
                      setState(() => width = 50);
                    }
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height: 200,
                    width: width,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: Text("this should Animate"),
                  ),
                ),
              ],
            ),
            Center(child: Text("A")),
            Container(
              height: 200,
              width: 200,
              color: Colors.redAccent,
            ),
          ]),
        )
      ],
    );
  }
}
