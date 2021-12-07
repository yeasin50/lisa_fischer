import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../extensions/extensions.dart';
import '../utils/utils.dart';
import 'widgets.dart';

class ErrorPageBodyBuilder extends StatelessWidget {
  const ErrorPageBodyBuilder({
    Key? key,
  }) : super(key: key);

  final double spreadFraction = .75;

  @override
  Widget build(BuildContext context) {
    late double boxWidth;
    final TextStyle _textStyle = TextStyle(
      fontSize: 44.fs,
      color: Colors.white,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;

        boxWidth = width *
            (Responsive.isDesktop
                ? .3
                : Responsive.isTablet
                    ? .4
                    : .7);

        return Stack(
          children: [
            ParticlesBackground(
              bubleAnimateRate: 0,
              numberOfParticles: Responsive.isDesktop
                  ? 20
                  : Responsive.isTablet
                      ? 15
                      : 12,
              backgroundSize: Size(width, height),
              //not working with it anymore/ prefer using holo
              // centerSafeArea: Size(
              //   boxWidth,
              //   boxWidth * (4 / 2),
              // ),
            ),
            Align(
              child: _middleNeonRect(
                  spreadFraction: spreadFraction,
                  size: Size(
                    boxWidth,
                    boxWidth * .55,
                  ),
                  textStyle: _textStyle),
            ),

            ///Home Button
            Align(
              child: IconButton(
                onPressed: () => handleHomeButtonClick(context),
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

Widget _middleNeonRect({
  required Size size,
  required double spreadFraction,
  BorderRadiusGeometry? borderRadius,
  TextStyle? textStyle,
}) {
  //Better work on background color instead of using child background
  return NeonRectBG(
    spreadFraction: spreadFraction,
    size: Size(
      size.width,
      size.height,
    ),
    blurSpread: 44.fs,
    frameThickness: 5.fs,
    child: Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: textStyle,
          children: [
            TextSpan(text: "4"),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: NeonCircle(
                  radius: 44.fs,
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
}
