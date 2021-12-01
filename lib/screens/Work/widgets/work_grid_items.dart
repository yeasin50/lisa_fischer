import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants/const.enum.pagesName.dart';
import '../../../providers/provider.navigator.dart';
import '../utils/utils.dart';
import 'lisa.work.widget.gridItem.dart';

class WorkPageGridItems extends StatelessWidget {
  // needed for image format
  final double gridItemWidth;

  final int gridItemCount;
  const WorkPageGridItems({
    Key? key,
    required this.gridItemWidth,
    required this.gridItemCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageName? page = Provider.of<PageNotifier>(context).pageName;

    return page != PageName.about && page != PageName.contact
        ? LayoutBuilder(
            builder: (context, constraints) {
              return GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: gridItemCount,
                childAspectRatio: 1,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                children: List.generate(
                  GridItemC.lisaWorklist.length,
                  (index) => GridItem(
                    width: gridItemWidth,
                    imgHash: GridItemC.lisaWorklist[index].blurHash,
                    imageUrl: GridItemC.lisaWorklist[index].backgroundUrl,
                    subtitle: GridItemC.lisaWorklist[index].subtitle,
                    title: GridItemC.lisaWorklist[index].title,
                  ),
                ),
              );
            },
          )
        : SizedBox();
  }
}
