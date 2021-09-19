import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/LisaFischer/pages/Work/utils/utils.dart';
import 'package:portfolio/LisaFischer/pages/Work/widgets/lisa.work.widget.gridItem.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';

class TabletView extends StatelessWidget {
  const TabletView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: Center(
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
        ),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
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
        footerRow(),
      ],
    );
  }
}
