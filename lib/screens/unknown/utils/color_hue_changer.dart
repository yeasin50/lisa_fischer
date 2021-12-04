import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../constants/constants.dart';

Color changeColorHue({
  required Color color,
  required double newHueValue,
}) {
  return HSLColor.fromColor(color)
      .withHue(
        newHueValue,
      )
      .toColor();
}

List<HSLColor> hslColorSet(int setNo) {
  int _setNo = setNo < 0
      ? 0
      : setNo > neonRectColorSet.length
          ? 0
          : setNo;
  return List.generate(
    4,
    (index) => HSLColor.fromColor(
      neonRectColorSet[_setNo][index],
    ),
  );
}

List<Color> hslToRgbSet(List<HSLColor> hslColor) {
  return List.generate(
    hslColor.length,
    (index) => hslColor[index].toColor(),
  );
}
