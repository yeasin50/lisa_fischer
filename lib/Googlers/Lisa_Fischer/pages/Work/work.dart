import 'dart:ui';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/grid_item.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/social_icons.dart';

import 'components/footer.dart';
import 'model/cart.dart';

class LFWork extends StatelessWidget {
  final String infoText =
      "Lisa Fischer is a designer focused on building brands and creating digital experiences — currently working at Google.";
  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;
    return LayoutBuilder(builder: (context, constraints) {
      //// lets' make the screen responsive
      /// every `GridItem default= 440x440 `
      /// if `griditem*3 > screenSize ` large screen
      double _maxWidth = constraints.maxWidth;
      print(_maxWidth);

      // if (_maxWidth > 440 * 3) {
      return Stack(
        children: [
          ///`Body`
          Center(
            child: Container(
              height: constraints.maxHeight,
              width: _maxWidth * .7,
              alignment: Alignment.topCenter,
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(
                        height: 100,
                      ),

                      ///`header Text`
                      ///we can divide into 2line, coz we already know the width of the screen

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: _maxWidth * .34,
                            child: Text(
                              infoText,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.lato(
                                fontSize: _fontS,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SliverGrid.count(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                    children: List.generate(
                      GridItemC.lisaWorklist.length,
                      (index) => GridItem(
                        width: 440,
                        imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
                        subtitle: GridItemC.lisaWorklist[index].subtitle,
                        title: GridItemC.lisaWorklist[index].title,
                        onPress: () {},
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(
                        height: 100,
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),

          ///`Header`
          Align(
              alignment: Alignment(0, -1),
              child: Container(
                width: _maxWidth * .65,
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

          ///  Footer always fix with maxWidth
          Positioned(
            bottom: 10,
            left: 10,
            child: WorkFooterText(),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: SocialIcons(),
          ),
        ],
      );
    });
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
