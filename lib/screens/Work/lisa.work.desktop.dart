import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/utils.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  int get _gridItemCount => 3;

  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;
    return LayoutBuilder(
      builder: (context, constraints) {
        final gridItemWidth = constraints.maxWidth / _gridItemCount;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimateEmojis(),

            ///* `header Text`
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

            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: _gridItemCount,
              childAspectRatio: 1,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(
                GridItemC.lisaWorklist.length,
                (index) => GridItem(
                  key: UniqueKey(),
                  width: gridItemWidth,
                  imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
                  subtitle: GridItemC.lisaWorklist[index].subtitle,
                  title: GridItemC.lisaWorklist[index].title,
                  imgHash: GridItemC.lisaWorklist[index].blurHash,
                  onPress: () {},
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
