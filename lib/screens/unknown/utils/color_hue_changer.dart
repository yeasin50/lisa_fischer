import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../../constants/constants.dart';

Color changeColorHue({
  required Color color,
  required double newHueValue,
}) {
  HSLColor hslColor = HSLColor.fromColor(color);
  final _newHueValue = (newHueValue + hslColor.hue);

  return hslColor
      .withHue(
        _newHueValue % 360 < 0 ? _newHueValue : _newHueValue % 360,
      )
      .toColor();
}

/// select Color set
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
