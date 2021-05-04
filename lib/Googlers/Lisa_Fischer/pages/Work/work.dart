import 'dart:ui';

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/mobile/menu.dart';

import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/grid_item.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';

import 'components/animate_emojis.dart';

import 'model/cart.dart';

// ignore: must_be_immutable
class LFWork extends StatelessWidget {
  final String infoText =
      "Lisa Fischer is a designer focused on building brands and creating digital experiences — currently working at Google.";

  final int griditemC;

  const LFWork({Key? key, required this.griditemC}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;
    return CustomScrollView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            if (griditemC == 1) LSMenu(),
            if (griditemC == 1) LSHeader().buildLogo(width: 35),
            if (griditemC > 1)
              SizedBox(
                height: 100,
              ),
            Center(child: AnimateEmojis()),
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
          crossAxisCount: griditemC,
          childAspectRatio: 1,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          children: List.generate(
            GridItemC.lisaWorklist.length,
            (index) => GridItem(
              width: double.maxFinite,
              imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
              subtitle: GridItemC.lisaWorklist[index].subtitle,
              title: GridItemC.lisaWorklist[index].title,
              onPress: () {},
            ),
          ),
        ),

        /// Bottom space to hold on stack
        SliverList(
          delegate: SliverChildListDelegate([
            if (griditemC > 1)
              SizedBox(
                height: 100,
              ),
            if (griditemC == 1) FooterText(),
            if (griditemC == 1) SocialIcons(),
          ]),
        ),
      ],
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
