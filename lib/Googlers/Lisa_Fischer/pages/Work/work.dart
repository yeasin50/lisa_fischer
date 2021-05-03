import 'dart:ui';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/mobile/menu.dart';

import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/grid_item.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/social_icons.dart';

import 'components/animate_emojis.dart';
import 'components/footer.dart';
import 'model/cart.dart';

// ignore: must_be_immutable
class LFWork extends StatelessWidget {
  final String infoText =
      "Lisa Fischer is a designer focused on building brands and creating digital experiences — currently working at Google.";

  int _griditemC = 3;
  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;
    return LayoutBuilder(builder: (context, constraints) {
      //// lets' make the screen responsive
      /// every `GridItem default= 440x440 `
      /// if `griditem*3 > screenSize ` large screen
      double _maxWidth = constraints.maxWidth;
      // print(_maxWidth);
      double _width = _maxWidth;

      if (_maxWidth >= 440 * 2.7) {
        _width = _maxWidth * .7;
      } else if (_maxWidth >= 440 * 1.5) {
        _griditemC = 2;
      } else {
        /// make mobile version
        _griditemC = 1;
      }

      return Stack(
        children: [
          ///`Body`

          buildCenterBody(constraints, _width, _fontS),

          ///`Header`
          if (_griditemC > 1)
            Align(
                alignment: Alignment(0, -1),
                child: Container(
                  width: _width * .95,
                  height: 100,
                  alignment: Alignment.center,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      LSHeader().buildLogo(),
                      LSHeader().navigators(),
                    ],
                  ),
                )),

          ///`Footer on width>=440*3`
          if (_griditemC > 2)
            Positioned(
              bottom: 0,
              child: Container(
                width: _maxWidth,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WorkFooterText(),
                    SocialIcons(),
                  ],
                ),
              ),
            ),
        ],
      );
    });
  }

  Center buildCenterBody(
      BoxConstraints constraints, double _width, double _fontS) {
    return Center(
      child: Container(
        height: constraints.maxHeight,
        width: _width,
        alignment: Alignment.topCenter,
        child: CustomScrollView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          // shrinkWrap: true,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate([
                //TOP empty space
                if (_griditemC > 1)
                  SizedBox(
                    height: 100,
                  ),
                if (_griditemC == 1)
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      LSMenu(width: constraints.maxWidth),
                      SizedBox(height: 5),
                      LSHeader().buildLogo(width: 44),
                    ],
                  ),

                // Center(child: AnimateEmojis()),
                SizedBox(
                  height: 16,
                ),

                ///`header Text`
                Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 70,
                      maxWidth: 700,
                    ),
                    child: Text(
                      infoText,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                        fontSize: _fontS,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                //bottom empty space, because we didnt we container 👆
                SizedBox(
                  height: 16,
                ),
              ]),
            ),
            SliverGrid.count(
              crossAxisCount: _griditemC,
              childAspectRatio: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(
                GridItemC.lisaWorklist.length,
                (index) => GridItem(
                  width: _griditemC <= 1 ? _width : _griditemC * 440,
                  imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
                  subtitle: GridItemC.lisaWorklist[index].subtitle,
                  title: GridItemC.lisaWorklist[index].title,
                  onPress: () {},
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                //// according to screen Size, we have init `_gridCount`
                ///if its'smaller we are removing from [Stack] and adding to [CustomScrollView] List
                if (_griditemC == 3)
                  SizedBox(
                    height: 100,
                  ),
                if (_griditemC < 3) WorkFooterText(),
                if (_griditemC < 3) SocialIcons(),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoText(double _fontS) {
    ////TODO: fix TextStyle
    TextStyle _infoTextStyle = GoogleFonts.lato(
      fontSize: _fontS,
      fontWeight: FontWeight.w500,
    );

    return FittedBox(
      child: EasyRichText(
        infoText,
        textAlign: TextAlign.center,
        defaultStyle: _infoTextStyle,
      ),
    );
  }
}
