import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/About/grid_items/grid.dart';

class LisaWriting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridItem(
        title: "WRITING",
        body: EasyRichText(
            "Design a Winning Portfolio — Tips + Tricks from a Google Designer ✨﻿"));
  }
}
