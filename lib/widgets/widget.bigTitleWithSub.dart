import 'package:flutter/material.dart';

import '../configs/configs.dart';
import '../LisaFischer/widgets/widgets.dart';

///for desktop and tablet mode it is always talking half screens' width
///
class TitleWithSub extends StatelessWidget {
  final String title;

  final List<String> rolls;

  const TitleWithSub({
    Key? key,
    required this.title,
    required this.rolls,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        SizedBox(height: 10),
        SubtitleCategoryOfWork(
          rolls: rolls,
        ),
      ],
    );
  }
}
