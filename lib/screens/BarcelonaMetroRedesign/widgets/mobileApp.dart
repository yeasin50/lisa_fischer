import 'package:flutter/material.dart';

class MetroMobileApp extends StatelessWidget {
  const MetroMobileApp({Key? key}) : super(key: key);
  get _space => SizedBox(
        height: 20,
      );
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            AspectRatio(
              aspectRatio: 750 / 39,
              child: Image.asset(
                "images/mobile_app_title.jpeg",
                fit: BoxFit.cover,
              ),
            ),
            // _space,
            Image.asset(
              "images/mobile_app_use.jpeg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.cover,
            ),

            // _space,
            Image.asset(
              "images/barelona_metro_app_portfolio_spread4.jpg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.contain,
            ),

            //* Printing
            AspectRatio(
              aspectRatio: 750 / 39,
              child: Image.asset(
                "images/folding_printing_title.jpeg",
                fit: BoxFit.fitWidth,
              ),
            ),
            _space,
            Image.asset(
              "images/folding_printing_map1.jpeg",
              width: constraints.maxWidth,
              fit: BoxFit.fitWidth,
            ),
            _space,
            //TODO: align like the web
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "images/folding_printing_map_L.jpeg",
                  fit: BoxFit.fill,
                  height: constraints.maxWidth * .3,
                  scale: 2,
                  width: constraints.maxWidth * .5 - 10,
                ),
                Image.asset(
                  "images/folding_printing_map_R.jpeg",
                  fit: BoxFit.fill,
                  height: constraints.maxWidth * .3,
                  width: constraints.maxWidth * .5 - 10,
                ),
              ],
            ),
            _space,
            Image.asset(
              "images/folding_printing_map_B1.jpeg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.cover,
            ),
            _space,
            Image.asset(
              "images/folding_printing_map_B2.jpeg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.cover,
            ),
            _space,
            Image.asset(
              "images/metro_logo.jpeg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.cover,
            ),
            _space,
          ],
        );
      },
    );
  }
}
