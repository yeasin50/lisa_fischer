import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/pages/Contact/contact.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/config.constants.dart';
import 'package:portfolio/configs/config.textStyles.dart';
import 'package:portfolio/utils/utils.customRoute.dart';

class LSAboutPageBody extends StatefulWidget {
  @override
  _LSAboutPageBodyState createState() => _LSAboutPageBodyState();
}

class _LSAboutPageBodyState extends State<LSAboutPageBody> {
  final String _texts1 =
      "\nShe specializes in bridging the tenets of brand identity with UX/UI to create innovative and impactful design solutions for the modern age.";

  final String _texts2 =
      "Aside from design, Lisa plays piano, runs long distances, and consistently binges episodes of 30 Rock.";

  final TextStyle _textStyleS = TextStyle(
    fontFamily: kFproximaNova,
    color: Colors.black,
  );

  final _listWidget = [
    LisaEducation(),
    LisaExperience(),
    LisaDesignSkills(),
    LisaTechnicalSkills(),
    LisaAwards(),
    LisaFeture(),
    LisaPress(),
    LisaWriting()
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > kMobileMaxWidth)
        return buildCustomScrollForWebTablet(constraints);
      else
        return buildScrollForPhone(constraints);
    });
  }

  ///`Mobile View`
  CustomScrollView buildScrollForPhone(BoxConstraints constraints) {
    //// this method will handle  `Mobile`

    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      semanticChildCount: 1,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              LSMenu(),

              LSHeader().buildLogo(),
              ProfileImage(),
              briefInfo(),

              SizedBox(height: 10),
              Divider(
                  color: Colors.red, indent: 4, endIndent: 4, thickness: 1.4),
              SizedBox(height: 15),
              LisaEducation(),
              LisaExperience(),
              LisaDesignSkills(),
              LisaTechnicalSkills(),
              LisaAwards(),

              LisaFeture(),
              LisaPress(),
              LisaWriting(),

              // divider
              SizedBox(height: 10),
              Divider(
                  color: Colors.red, indent: 4, endIndent: 4, thickness: 1.4),
              SizedBox(height: 10),

              //// Extra left Padding for `Connect & Contact`
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConnectOnAbout(),
                    SizedBox(height: 12),
                    ContactOnAbout(),
                    SizedBox(height: 12),
                    CustomButton(
                      label: "GET IN TOUCH",
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              // // //divider
              SizedBox(height: 10),
              Divider(
                  color: Colors.red, indent: 4, endIndent: 4, thickness: 1.4),
              SizedBox(height: 10),

              FooterText(),
              SocialIcons(),
            ],
          ),
        ),
      ],
    );
  }

  /// `layout for Desktop & Web`
  CustomScrollView buildCustomScrollForWebTablet(BoxConstraints constraints) {
    //// this method will handle all layout except Mobile
    return CustomScrollView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      // semanticChildCount: widget.gridItemCount > 1 ? 2 : 1,
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: kTopLevelStackSpace,
          ),
        ])),

        buildImageAndIntroOnDesktop(constraints),

        /// Divider
        SliverList(
          delegate: SliverChildListDelegate(
            [
              SizedBox(
                height: 24,
              ),
              Divider(
                  color: Colors.red, thickness: 2.4, endIndent: 20, indent: 20),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    4,
                    (index) => Container(
                          width: constraints.maxWidth * .24,
                          child: _listWidget[0 + index],
                        )),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                    4,
                    (index) => Container(
                          width: constraints.maxWidth * .24,
                          child: _listWidget[index + 4],
                        )),
              ),
            ],
          ),
        ),

        /// `Connect & contact`

        /// Bottom space to hold on stack
        SliverList(
          delegate: SliverChildListDelegate([
            /// `Divider`
            SizedBox(height: 24),
            Divider(
                color: Colors.red, indent: 20, endIndent: 20, thickness: 2.4),
            SizedBox(height: 10),

            ////`2nd part Contact & Connect`
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConnectOnAbout(),
                  ContactOnAbout(),

                  /// extra space handler, you can use any empty widget here
                  Container(),

                  CustomButton(
                    label: "GET IN TOUCH",
                    onTap: () {
                      LSHeader.currentActiveIndex = 2;
                      Navigator.of(context).pushReplacement(
                        pageRouteFromRT(
                          () => LisaContactPage(),
                          startOffset: Offset(1.0, 0),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),

            //extra height for holding bottom Stacks chidren
            SizedBox(
              height: 100,
            ),

            /// if we are in tablet we want to set footer at bottom
            if (constraints.maxWidth < kTabletMaxWidth) footerRow(),
          ]),
        ),
      ],
    );
  }

  //// image & intro
  buildImageAndIntroOnDesktop(BoxConstraints constraints) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: constraints.maxWidth * .4,
              minWidth: constraints.maxWidth * .2,
            ),
            child: ProfileImage(),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: constraints.maxWidth * .5),
            child: briefInfo(),
          )
        ],
      )
    ]));
  }

  Padding briefInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lisa Fischer",
            textAlign: TextAlign.left,
            style: titleTextStyle,
          ),
          WavingWidget(
            child: Text(
              "👋",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Text(
            "\nLisa is a designer focused on building brands and creating digital experiences — currently working at Google.",
            style: subHeaderTextStyle,
          ),
          Text(
            _texts1 + "\n\n" + _texts2 + "\n",
            style: normalStyle.copyWith(
              letterSpacing: .27,
            ),
          ),
          Text(
            "— Based in the San Francisco Bay area",
            style: normalStyle,
          ),
        ],
      ),
    );
  }
}
