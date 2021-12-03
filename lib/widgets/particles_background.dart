import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import '../model/model.dart';
import 'widgets.dart';

class ParticlesBackground extends StatefulWidget {
  final Size backgroundSize;
  final Size? centerSafeArea;

  const ParticlesBackground({
    Key? key,
    required this.backgroundSize,
    this.centerSafeArea,
  }) : super(key: key);

  @override
  _ParticlesBackgroundState createState() => _ParticlesBackgroundState();
}

class _ParticlesBackgroundState extends State<ParticlesBackground> {
  late double width, height;

  @override
  void initState() {
    super.initState();

    width = widget.backgroundSize.width;
    height = widget.backgroundSize.height;

    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Random random = Random();
      Particle particle = Particle(pos: Pvector(width / 2, height / 2));
      particles.add(particle);
      List.generate(numberOfParticles, (index) {
        var x = random.nextDouble() * width * .9;

        /// .9 will handle the out boundary
        var y = random.nextDouble() * height * .9;
        if (x < particle.radius) x += particle.radius * 2;
        if (y < particle.radius) y += particle.radius * 2;

        Pvector pos = Pvector(x, y);
        Particle pt = Particle(pos: pos);

        ///dynamic color
        pt.colors = colorList[index % (colorList.length)];

        //init dynamic vector poss 4diff direction
        if (numberOfParticles % 4 == 0) pt.velocity.x = -pt.velocity.x;
        if (numberOfParticles % 4 == 1) pt.velocity.y = -pt.velocity.y;
        if (numberOfParticles % 4 == 2) {
          pt.velocity.x = -pt.velocity.x;
          pt.velocity.y = -pt.velocity.y;
        }

        /// litte dynamic velocity
        if (index % 3 == 0) pt.velocity.y *= 1.2;
        if (index % 3 == 1) pt.velocity.x *= .8;
        if (index % 3 == 2) {
          pt.velocity.x *= .6;
          pt.velocity.y *= .9;
        }

        particles.add(pt);
      });

      timer = Timer.periodic(
        Duration(milliseconds: (fps * 1000).floor()),
        // Duration(milliseconds: 100),
        frameBuilder,
      );
    });
  }

  @override
  void dispose() {
    timer.cancel();
    particles.clear();
    super.dispose();
  }

  late Timer timer;
  final Random random = Random();
  final double fps = 1 / 24;

  frameBuilder(Timer timer) {
    for (Particle pt in particles) {
      pt.pos.y += pt.velocity.y;
      pt.pos.x += pt.velocity.x;

      boxCollision(pt);
    }

    if (particles.isNotEmpty) {
      setState(() {});
    }
  }

  void boxCollision(Particle pt) {
    // would it be too heavy to compare with others pt
    if (pt.pos.y > height - pt.radius * 2 || pt.pos.y <= 0) {
      pt.velocity.y = -pt.velocity.y;
    }
    if (pt.pos.x > width - pt.radius || pt.pos.x <= 0) {
      pt.velocity.x = -pt.velocity.x;
    }
    //* TODO: for Center Safe Area
  }

  List<Particle> particles = [];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ...particles
            .map((p) => Positioned(
                  top: p.pos.y,
                  left: p.pos.x,
                  child: BubbleRadialContainer(
                    radius: p.radius,
                    colors: p.colors,
                  ),
                ))
            .toList(),
      ],
    );
  }
}
