import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';

class LisaPress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: "PRESS",
        body: EasyRichText(
            "The New York Times, Forbes, TechCrunch, The Verge, Engadget, AdWeek, Search Engine Land"));
  }
}
