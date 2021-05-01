import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class AnimateEmojis extends StatefulWidget {
  @override
  _AnimateEmojisState createState() => _AnimateEmojisState();
}

class _AnimateEmojisState extends State<AnimateEmojis>
    with SingleTickerProviderStateMixin {
  final _emojis = ["👋", "👀", "👇", "💭"];
  // final _emojis = ["A", "B", "C", "D"];

  /// for counting Position
  late AnimationController _controller;
  late Animation _animation;

  /// animating on List
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _initController();
    });
  }

  _initController() {
    /// 4 items = 4 sec;
    _controller =
        AnimationController(duration: const Duration(seconds: 4), vsync: this);

    /// end on 3 because index 0to3=4
    _animation = IntTween(begin: 0, end: 3).animate(_controller)
      ..addListener(() {
        // _scrollController.jumpTo(_animation.value);
        //// `ScrollablePositionedList`
        itemScrollController.scrollTo(
          index: _animation.value,
          duration: Duration(milliseconds: 200),
          // curve:
        );
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed)
          _controller.reverse();
        else if (status == AnimationStatus.dismissed) _controller.forward();
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    ////TODO:: adjust Font&BOx Size
    return SizedBox(
      width: 50,
      height: 50,

      /// if we use [ListView] you have calculate offset like
      /// textSize* position
      /// another Approch we can try [ScrollablePositionedList]
      // child: ListView(
      //   controller: _scrollController,
      //   children: _items,
      // ),
      child: ScrollablePositionedList.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return EasyRichText(
            _emojis[index],
            defaultStyle: TextStyle(
              fontSize: 33,
            ),
          );
        },
        itemCount: _emojis.length,
        itemScrollController: itemScrollController,
        itemPositionsListener: itemPositionsListener,
      ),
    );
  }
}
