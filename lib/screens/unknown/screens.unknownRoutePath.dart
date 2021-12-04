import 'package:flutter/material.dart';

import '../../utils/utils.dart';
import 'widgets/widgets.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Couldn't found 🤐",
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          final boxWidth = width * .4;
          final boxHeight = width * .2;
          return Stack(
            children: [
              ParticlesBackground(
                backgroundSize: Size(width, height),
                centerSafeArea: Size(boxWidth, boxHeight),
              ),
              Align(
                // alignment: Alignment(0, -.2),
                child: () {
                  //Better work on background color instead of using child background

                  final TextStyle _textStyle =
                      TextStyle(fontSize: 44, color: Colors.white);

                  final BorderRadiusGeometry? _borderRadius =
                      BorderRadius.circular(12);
                  return NeonRectBG(
                    size: Size(
                      boxWidth,
                      boxHeight,
                    ),
                    blurSpread: 44,
                    frameThickness: 3,
                    borderRadius: _borderRadius,
                    child: Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: _borderRadius,
                      ),
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(
                          style: _textStyle,
                          children: [
                            TextSpan(text: "4"),
                            WidgetSpan(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                child: NeonCircle(
                                  radius: 44,
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            TextSpan(text: "4"),
                          ],
                        ),
                      ),
                    ),
                  );
                }(),
              ),

              ///Home Button
              Align(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
