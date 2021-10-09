import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

class ImageSliderOnThrive extends StatefulWidget {
  ImageSliderOnThrive({Key? key}) : super(key: key);

  @override
  _ImageSliderOnThriveState createState() => _ImageSliderOnThriveState();
}

class _ImageSliderOnThriveState extends State<ImageSliderOnThrive> {
  final _imagesPath = [
    'images/thrive/phones_in_lineeee3.jpg',
    'images/thrive/phones_in_lineeee4.jpg',
    'images/thrive/phones_in_lineeee5.jpg',
    'images/thrive/phones_in_lineeee6.jpg',
  ];

  late CarouselController controller = CarouselController();

  @override
  void initState() {
    super.initState();
    controller = CarouselController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 750 / 485,
      child: Stack(
        children: [
          CarouselSlider(
            carouselController: controller,
            items: [
              ..._imagesPath.map(
                (p) => Image.asset(
                  p,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              // aspectRatio: 750 / 485,
              viewportFraction: 1,
              autoPlayInterval: Duration(
                seconds: 3,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-.9, 0),
            child: RoundButton(
              child: Icon(Icons.arrow_back_ios_outlined),
              height: 45,
              onTap: () {
                controller.previousPage();
              },
            ),
          ),
          Align(
            alignment: Alignment(.9, 0),
            child: RoundButton(
              child: Icon(Icons.arrow_forward_ios_outlined),
              height: 45,
              onTap: () {
                controller.nextPage();
              },
            ),
          )
        ],
      ),
    );
  }
}
