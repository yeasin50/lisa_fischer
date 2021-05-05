import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';

class LisaFeture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: "FEATURES",
        body: EasyRichText("LinkedIn Course: Building an Online Portfolio," +
            " Applied Arts Magazine," +
            " Newark Academy Arts Blog," +
            " New Jersey Hills Newspaper, " +
            "SCAD Portfolio Curated Gallery, Medium, PRWeb"));
  }
}
