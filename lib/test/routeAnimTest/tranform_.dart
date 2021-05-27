import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';
import 'package:visibility_detector/visibility_detector.dart';

class TransalateTranForm extends StatefulWidget {
  @override
  _TransalateTranFormState createState() => _TransalateTranFormState();
}

class _TransalateTranFormState extends State<TransalateTranForm> {
  double _topPadding = 30;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.pink,
          ),
          VisibilityDetector(
              onVisibilityChanged: (info) {
                // we are just animating once
                print("frac: ${info.visibleFraction} anim: $_topPadding");
                if (info.visibleFraction > .6)
                  setState(() {
                    _topPadding = 0;
                  });
              },
              key: Key("showCaseImage"),
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                padding: EdgeInsets.only(top: _topPadding),
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.amber,
                ),

                // buildFadeInImage(),
              )),
          Container(
            height: 200,
            color: Colors.green,
          ),
          Container(
            height: 200,
            color: Colors.pink,
          ),
        ],
      ),
    );
  }

  FadeInImage buildFadeInImage() {
    return FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      fadeInDuration: Duration(seconds: 4),
      alignment: Alignment.bottomCenter,
      image:
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590468794072-PYSGV917AQK089V5TJ6D/ke17ZwdGBToddI8pDm48kEQmqQZdtGBB2XcSE0k8ACoUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYwL8IeDg6_3B-BRuF4nNrNcQkVuAT7tdErd0wQFEGFSnJW4iJZo6K6e5Za5EXsF7Xug5INyFhYLnFibc4K5-AtxqVck-AY33nSz_C37nTLCqg/zoomed%252Bin%252Bproduct%252Bcards-22.jpg?format=1000w",
      fit: BoxFit.fitHeight,
    );
  }
}
