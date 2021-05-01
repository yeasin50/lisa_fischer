import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/grid_item.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';

import 'model/cart.dart';

class LFWork extends StatelessWidget {
  final String infoText =
      "Lisa Fischer is a designer focused on building brands and creating digital experiences — currently working at Google.";
  final String _buyOnGoogle =
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1589867350400-OMHQTG1DMGE608HEJQ2P/ke17ZwdGBToddI8pDm48kIUZu8M3LMQVFAwu5kUyJgF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UaA-xl-r-AL5Gf0EnGFgw7VTs8Z9hyhSei7JRrLArC10W07ycm2Trb21kYhaLJjddA/Buy+on+Google_squarespace_banner.png?format=750w";

  @override
  Widget build(BuildContext context) {
    final double _fontS = Theme.of(context).textTheme.headline5!.fontSize!;
    return Column(
      children: [
        LSHeader(),
        // AnimateEmojis(),
        buildInfoText(_fontS),

        buildWorkItems(),
      ],
    );
  }

  Expanded buildWorkItems() {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List.generate(
          GridItemC.lisaWorklist.length,
          (index) => GridItem(
            imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
            subtitle: GridItemC.lisaWorklist[index].subtitle,
            title: GridItemC.lisaWorklist[index].title,
            onPress: () {},
          ),
        ),
      ),
    );
  }

  Padding buildInfoText(double _fontS) {
    ////TODO: fix TextStyle
    TextStyle _infoTextStyle = GoogleFonts.lato(
      fontSize: _fontS,
      fontWeight: FontWeight.w500,
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(
        infoText,
        textAlign: TextAlign.center,
        style: _infoTextStyle,
      ),
    );
  }
}
