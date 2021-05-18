import 'package:flutter/material.dart';
import 'package:portfolio/config/constants.dart';

class FadeAnimTest extends StatefulWidget {
  @override
  _FadeAnimTestState createState() => _FadeAnimTestState();
}

class _FadeAnimTestState extends State<FadeAnimTest>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  late ScrollController scrollController;

  @override
  // void initState() {
  //   super.initState();

  //   // // scrollController = ScrollController(debugLabel: "Scroll=1");
  //   // scrollController.addListener(() {
  //   //   // print(" poss: ${scrollController.}");
  //   // });
  //   controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(
  //       seconds: 4,
  //     ),
  //   )..addListener(() {
  //       setState(() {});
  //     });
  //   animation = Tween<double>(
  //     begin: 0.0,
  //     end: 1.0,
  //   ).animate(controller);
  // }

  startAnim() {}

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.amber,
    );
  }

  Column buildFontTest() {
    return Column(
      children: [
        Text(
          "Normal ",
          style: TextStyle(
              // fontFamily: kFproximaNova,
              // fontWeight: FontWeight.w400,
              ),
        ),
        Text(
          "Bold",
          style: TextStyle(
              // fontFamily: kFproximaNova,
              // fontWeight: FontWeight.w700,
              ),
        ),
        Text(
          "Extra Bold",
          style: TextStyle(
              // fontFamily: kFproximaNova,
              // fontWeight: FontWeight.w900,
              ),
        ),
        Text(
          "Extra Bold italic",
          style: TextStyle(
              // fontFamily: kFproximaNova,
              // fontWeight: FontWeight.w900,
              // fontStyle: FontStyle.italic,
              ),
        ),
      ],
    );
  }

  CustomScrollView buildCustomScrollView() {
    return CustomScrollView(
      controller: scrollController,
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              // FadeTransition(
              //   opacity: animation,
              //   alwaysIncludeSemantics: true,
              //   child: Container(
              //     child: FadeInImage.assetNetwork(
              //       placeholder: placeHolderImagePath,
              //       // fadeInDuration: Duration(seconds: 12),
              //       fadeOutDuration: Duration(seconds: 4),
              //       image:
              //           "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590350017132-ZJWLDOX3GSITLN1K7GLT/ke17ZwdGBToddI8pDm48kBe3s72x4TW__9H-J8QPN6d7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0pQYXULvgm9t5Zb8hmAX2a-2QVMc0DOsEw99humzWVrFVBcZcfL7QrKE_xBa0lpg2Q/buy+on+google+images+for+portfolioo-12.png?format=750w",
              //       height: 300,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
