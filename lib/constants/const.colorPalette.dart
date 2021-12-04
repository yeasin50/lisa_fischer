import 'package:flutter/material.dart';

const backgroundColor = Colors.white;

const Color kColorDash = const Color(0xff00b288);
const Color titleColor = const Color.fromRGBO(5, 173, 134, .21);
const linkTextColor = const Color(0xff363C3C);
const linkTextColor2 = const Color(0xff141414);

const Color greyColor = const Color(0xff737373);

// Colors sets will be used on 404/error screen
get color4Set1 => [
      Colors.purple.shade400,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];
//TODO:maintain the prev color format while assigng color
get color4Set2 => const [
      Color.fromRGBO(85, 255, 225, 1),
      Color.fromRGBO(175, 61, 255, 1),
      Color.fromRGBO(255, 59, 148, 1),
      Color.fromRGBO(166, 253, 41, 1),
    ];

final List<List<Color>> _colorSet = [
  color4Set1,
  color4Set2,
];

List<List<Color>> get neonRectColorSet => _colorSet;
