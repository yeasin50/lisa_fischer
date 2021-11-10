import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../Leveled/utils/utils.dart';
import '../utils/utils.dart';
import 'widgets.dart';

class ImageSliderOnThrive extends StatefulWidget {
  ImageSliderOnThrive({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  // used on image format, well we can also get width from LayoutBuilder but it will include an extra widget 🙂
  final double maxWidth;

  @override
  _ImageSliderOnThriveState createState() => _ImageSliderOnThriveState();
}

class _ImageSliderOnThriveState extends State<ImageSliderOnThrive> {
  final _imagesData = [
    sliderImage0,
    sliderImage1,
    sliderImage2,
    sliderImage3,
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
              ..._imagesData.map(
                (p) => mwBHImage(
                  hash: p.hash,
                  imageUrl: p.imageUrl,
                  width: widget.maxWidth,
                  aspectR: 750 / 485,
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
