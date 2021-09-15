import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class P5Leveled extends StatefulWidget {
  final BoxConstraints constraints;

  const P5Leveled({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  _P5LeveledState createState() => _P5LeveledState();
}

class _P5LeveledState extends State<P5Leveled> {
  final images = [
    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939842289-RW1LOWDBUE2QT2LG5T91/leveled_website+for+portfolio+with+pattern+latest-50.png?format=1500w",
    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939838360-F3OI2WQVR66L2ITAM9KV/leveled_website+for+portfolio+with+pattern+latest-51.png?format=1500w",
    "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589939843017-RIGTJG1PYLC0VR8N5UDF/leveled_website+for+portfolio+with+pattern+latest-49.png%22%20alt=%22leveled_website%20for%20portfolio%20with%20pattern%20latest-49.png",
  ];
  int _index = 0;

  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _index++;
        if (_index >= images.length) _index = 0;
      });
    });
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
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,
        SizedBox(
          height: widget.constraints.maxWidth * .6,
          width: widget.constraints.maxWidth,
          child: Stack(
            fit: StackFit.expand,
            children: [
              FadeInImage.assetNetwork(
                placeholder: placeHolderImagePath,
                //TODO:: need to work on here
                fadeOutDuration: Duration(milliseconds: 300),
                fit: BoxFit.fitWidth,
                // width: constraints.maxWidth,
                height: widget.constraints.maxWidth * .6,
                image: images[_index],
              ),

              ///Controllers
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  hoverColor: Colors.black87,
                  onTap: () {
                    setState(() {
                      _index--;
                      if (_index < 0) _index = images.length - 1;
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
                    setState(() {
                      _index++;
                      if (_index >= images.length) _index = 0;
                    });
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
        columnSpace,
        columnSpace,
        RichTextInParentheses(
          text: "Social ",
          textStyle: MyTextStyles().textParan20,
        ),
        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fadeOutDuration: Duration(milliseconds: 300),
          fit: BoxFit.fitWidth,
          width: widget.constraints.maxWidth,
          height: widget.constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589906254946-2MV9VK3GDCBHJ773CCCA/leveled_twitter+social-fb-33.png?format=1500w",
        ),
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          fadeOutDuration: Duration(milliseconds: 300),
          fit: BoxFit.fitWidth,
          width: widget.constraints.maxWidth,
          height: widget.constraints.maxWidth * .6,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589665934776-XDY86EAOXW91EM8UY218/image-asset.jpeg?format=750w",
        ),
      ],
    );
  }
}
