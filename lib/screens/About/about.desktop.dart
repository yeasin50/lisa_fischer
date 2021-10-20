import 'package:flutter/material.dart';

import '../../configs/config.constants.dart';
import '../../constants/constants.dart';
import '../../widgets/widgets.dart';
import 'utils/about.utils.clickEvents.dart';
import 'widgets/widgets.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _maxWidth = constraints.maxWidth * .75;

        final _itemWidth = constraints.maxWidth * .75 / 4 - columnSpace.height!;

        return SizedBox(
          width: _maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //* Profile image and intro
              Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth / 2,
                    child: ProfileImage(),
                  ),
                  SizedBox(width: columnSpace.height!),
                  Expanded(
                    child: BriefInfo(),
                  ),
                ],
              ),

              SizedBox(
                height: columnSpace.height! * 3,
              ),

              divider,

              SizedBox(
                height: columnSpace.height! * 3,
              ),

              //*  details
              SizedBox(
                width: _maxWidth,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  spacing: columnSpace.height!,
                  runSpacing: columnSpace.height! * 2,
                  children: [
                    ...[
                      ///FIXME: Edu text height change on scroll: hint=> just because of `runSpacing`
                      LisaEducation(),
                      LisaExperience(),
                      LisaDesignSkills(),
                      LisaTechnicalSkills(),
                      LisaAwards(),
                      LisaFeture(),
                      LisaPress(),
                      LisaWriting(),
                    ].map(
                      (item) => SizedBox(
                        width: _itemWidth,
                        child: item,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(
                height: columnSpace.height! * 1.5,
              ),
              divider,

              SizedBox(
                height: columnSpace.height! * 1.5,
              ),

              GridView.count(
                key: ValueKey("Contact Row"),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 0,
                mainAxisSpacing: 8,
                childAspectRatio: 4 / 2,
                children: [
                  ConnectOnAbout(),
                  ContactOnAbout(),

                  //* Im invisible and controlling the Grid :)
                  SizedBox(),

                  Align(
                    alignment: Alignment.topRight,
                    child: CustomButton(
                      label: "GET IN TOUCH",
                      onTap: () =>
                          AboutPageClickEvent.getInTouchHandler(context),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
