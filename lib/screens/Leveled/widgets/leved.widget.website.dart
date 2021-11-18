import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter/material.dart';

import '../../../configs/configs.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import '../utils/utils.dart';

class P5Leveled extends StatefulWidget {
  final double maxWidth;

  const P5Leveled({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  _P5LeveledState createState() => _P5LeveledState();
}

class _P5LeveledState extends State<P5Leveled> {
  get _itemSpaceAboveRTP => SizedBox(
        height: columnSpace.height! * 3,
      );

  late final List<String> images;
  int _index = 0;

  late Timer _timer;

  //* When user change the image by click, have delay before starting animate[_timer]
  CancelableOperation? _cancelableOperation;

  @override
  void initState() {
    super.initState();
    images = [
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939842289-RW1LOWDBUE2QT2LG5T91/leveled_website+for+portfolio+with+pattern+latest-50.png?format=${widget.maxWidth}w",
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939838360-F3OI2WQVR66L2ITAM9KV/leveled_website+for+portfolio+with+pattern+latest-51.png?format=${widget.maxWidth}w",
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939843017-RIGTJG1PYLC0VR8N5UDF/leveled_website+for+portfolio+with+pattern+latest-49.png%22%20alt=%22leveled_website%20for%20portfolio%20with%20pattern%20latest-49.png?format=${widget.maxWidth}w",
    ];

    _timer = _intiTimer();
  }

  Timer _intiTimer() {
    Timer timer =
        Timer.periodic(Duration(seconds: 1, milliseconds: 200), (timer) {
      setState(() {
        _index++;
        if (_index >= images.length) _index = 0;
      });
    });

    return timer;
  }

  _restartTimer() {
    if (_cancelableOperation != null) {
      _cancelableOperation!.cancel();
    }

    _cancelableOperation = CancelableOperation.fromFuture(
      Future.delayed(Duration(seconds: 3)),
    ).then(
      (p0) {
        _timer = _intiTimer();
      },
      onCancel: () {
        _timer.cancel();
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "Website",
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,
        SizedBox(
          height: widget.maxWidth * .6,
          width: widget.maxWidth,
          child: Stack(
            fit: StackFit.expand,
            children: [
              mwBHImage(
                hash: levedLogoAnimation.hash,
                imageUrl: images[_index],
                aspectR: widget.maxWidth / (widget.maxWidth * .6),
                width: widget.maxWidth,
              ),

              ///Controllers
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  hoverColor: Colors.black87,
                  onTap: () {
                    setState(() {
                      _timer.cancel();
                      _index--;
                      if (_index < 0) _index = images.length - 1;

                      //start timer again
                      _restartTimer();
                    });
                  },
                  child: Container(
                    width: 44,
                    height: 60,
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(.12),
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.white,
                      size: 33,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  hoverColor: Colors.black87,
                  onTap: () {
                    _timer.cancel();
                    setState(() {
                      _index++;
                      if (_index >= images.length) _index = 0;
                    });
                    //start timer again
                    _restartTimer();
                  },
                  child: Container(
                    width: 44,
                    height: 60,
                    alignment: Alignment.center,
                    color: Colors.black.withOpacity(.12),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                      size: 33,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        _itemSpaceAboveRTP,
        RichTextInParentheses(
          text: "Social ",
          textStyle: AppTextStyles.textParan20,
        ),
        columnSpace,
        mwBHImage(
          hash: leveledFB(widget.maxWidth).hash,
          imageUrl: leveledFB(widget.maxWidth).imageUrl,
          aspectR: 15 / 10,
        ),
        columnSpace,
        SizedBox(
          width: widget.maxWidth,
          height: widget.maxWidth * .6,
          child: mwBHImage(
            hash: levedLogoAnimation.hash,
            imageUrl:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589665934776-XDY86EAOXW91EM8UY218/image-asset.jpeg",
            aspectR: widget.maxWidth / widget.maxWidth * .6,
            width: widget.maxWidth,
          ),
        ),
        columnSpace,
      ],
    );
  }
}
