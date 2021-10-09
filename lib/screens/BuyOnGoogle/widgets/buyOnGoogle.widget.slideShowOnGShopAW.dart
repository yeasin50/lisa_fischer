import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

import '../utils/utils.dart';

class SlideShowOnActionWebSite extends StatefulWidget {
  final double maxWidth;

  SlideShowOnActionWebSite({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  _SlideShowOnActionWebSiteState createState() =>
      _SlideShowOnActionWebSiteState();
}

class _SlideShowOnActionWebSiteState extends State<SlideShowOnActionWebSite> {
  late int currentIndex;
  late Timer _timer;

  late List<Widget> _widgets;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;

    _widgets = imagesPathOfGifMaker
        .map(
          (path) => BlurHash(
            hash:
                "|3RpIFIU1A?b1T?v0qtREoogoextt7a#Rjj]azj[0H%M-NM{r:IU-nazxV-;ofWCRit7xufiaxof0ZRjxTt7-nWBngofsk_3M{RPt7ofoybHofWBKmofaJRjjDofxZoeV@_4xuj[NGIVM{j[a#azkWWB%MWBRit7IUa{xu",
            image: path,
          ),
        )
        .toList();

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        currentIndex++;
        if (currentIndex >= imagesPathOfGifMaker.length) currentIndex = 0;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (_timer.isActive) _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    ///// * Why not just Image.network[index], because I'm having UI on on 1stLoad
    return AspectRatio(
      aspectRatio: 15 / 10,
      child: _widgets[currentIndex],
    );
  }
}
