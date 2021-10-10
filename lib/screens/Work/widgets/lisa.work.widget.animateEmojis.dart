import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../widgets/widget.emojiWrapper.dart';

class AnimateEmojis extends StatefulWidget {
  @override
  _AnimateEmojisState createState() => _AnimateEmojisState();
}

class _AnimateEmojisState extends State<AnimateEmojis>
    with SingleTickerProviderStateMixin {
  // final _emojis = ["👋", "👀", "👇", "💭"];
  final _emojiPaths = ['wave', 'look', 'down', 'thinking'];

  @override
  Widget build(BuildContext context) {
    //TODO: Fix height and show another half
    return Container(
      width: 33 + (8 * 2),
      alignment: Alignment.center,
      child: CarouselSlider(
        items: _emojiPaths
            .map(
              (name) => EmojiWrapper(
                imageName: name,
                size: 33,
              ),
            )
            .toList(),
        options: CarouselOptions(
          scrollDirection: Axis.vertical,
          scrollPhysics: BouncingScrollPhysics(),
          autoPlay: true,
          reverse: true,
          height: 44 * 1.5,
          aspectRatio: 9 / 9,
          viewportFraction: 1,
        ),
      ),
    );
  }
}
