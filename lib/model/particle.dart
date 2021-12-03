import 'package:flutter/material.dart';

class Pvector {
  late double x;
  late double y;

  Pvector(this.x, this.y);
}

const baseColorYB = [
  Colors.white,
  Colors.yellow,
  Colors.black,
  Colors.blue,
  Colors.black,
];
const baseColorRY = [
  Colors.white,
  Colors.red,
  Colors.black,
  Colors.yellow,
  Colors.black,
];

const baseColorPBY = [
  Colors.white,
  Colors.pink,
  Colors.black,
  Colors.blue,
  Colors.black,
];

const colorList = [
  baseColorYB,
  baseColorRY,
  baseColorPBY,
];

///TODO:: control number of particles
const int numberOfParticles = 10;

class Particle {
  Pvector pos;
  Pvector velocity = Pvector(4, 4);
  List<Color> colors = baseColorYB;

  double radius = 34;
  Particle({
    required this.pos,
  });
  // final double dragforce
}
