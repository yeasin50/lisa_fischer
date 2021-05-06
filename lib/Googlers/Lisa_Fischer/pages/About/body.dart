import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/mobile/menu.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/page_nav.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';

import 'package:portfolio/config/constants.dart';

import 'components/profile_image.dart';
import 'components/text_helper.dart';
import 'grid_items/awards.dart';
import 'grid_items/design_skills.dart';
import 'grid_items/education.dart';
import 'grid_items/experience.dart';
import 'grid_items/features.dart';
import 'grid_items/grid.dart';
import 'grid_items/press.dart';
import 'grid_items/technical_skills.dart';
import 'grid_items/writing.dart';

// ignore: must_be_immutable
class LSAboutPageBody extends StatefulWidget {
  LSAboutPageBody({required this.gridItemCount});
  int gridItemCount;

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

  _getCount(BoxConstraints constraints) {
    if (constraints.maxWidth < 850)
      return .55;
    else
      return 1;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > kMobileMaxWidth)
        return buildCustomScrollForWebTablet(constraints);
      else
        return buildScrollForPhone(constraints);
    });
  }

  CustomScrollView buildScrollForPhone(BoxConstraints constraints) {
    //// this method will handle  Mobile
    TextStyle _linkTextStyle = TextStyle(
      fontFamily: kFproximaNova,
      color: Colors.green,
    );
    return CustomScrollView(
      // shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              LSMenu(),
              LSHeader().buildLogo(),
              ProfileImage(),
              briefInfo(),
              LisaEducation(),
              LisaExperience(),
              LisaDesignSkills(),
              LisaTechnicalSkills(),
              LisaAwards(),

              // header("Awards"),
              // Container(
              //   margin: const EdgeInsets.symmetric(
              //     vertical: 10,
              //   ),
              //   width: 30,
              //   height: 3,
              //   color: kColorDash,
              // ),

              // Container(
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisSize: MainAxisSize.min,
              //     children: [
              //       Expanded(
              //         child: EasyRichText(
              //           "Graphis New Talent Annual 2016: Silver Award + Merit Award, " +
              //               "Adobe Design Achievement Awards 2016: Semifinalist," +
              //               " Applied Arts Magazine 2016: Winner, " +
              //               "Applied Arts Creative Excellence Award 2016: Winner," +
              //               " IDA International Design Awards 2016: Bronze Award, " +
              //               "SCAD Secession 2016: Bronze Award + Finalist," +
              //               " SCAD Academic Honors Award: 2014, 2015, " +
              //               "SCAD Achievement Honors Award: 2014, 2015," +
              //               " SCAD Artistic Honors Award 2015",
              //           patternList: [
              //             EasyRichTextPattern(
              //               targetString: "Graphis",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //               recognizer: TapGestureRecognizer()
              //                 ..onTap = () => print('Tap Here onTap'),
              //             ),
              //             EasyRichTextPattern(
              //               targetString: "Adobe Design Achievement",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //             ),
              //             EasyRichTextPattern(
              //               targetString:
              //                   "Applied Arts Creative Excellence Award",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //             ),
              //             EasyRichTextPattern(
              //               targetString: "Applied Arts Magazine",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //             ),
              //             EasyRichTextPattern(
              //               targetString: "IDA International Design Awards",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //             ),
              //             EasyRichTextPattern(
              //               targetString: "SCAD Secession ",
              //               matchWordBoundaries: false,
              //               style: _linkTextStyle,
              //             ),
              //           ],
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              LisaFeture(),
              LisaPress(),
              LisaWriting(),

              // divider
              SizedBox(height: 10),
              Divider(color: Colors.red, thickness: 2.4),
              SizedBox(height: 10),

              Container(
                height: 50,
                width: 50,
                color: Colors.amber,
              ),
              // // //divider
              SizedBox(height: 10),
              Divider(color: Colors.red, thickness: 2.4),
              SizedBox(height: 10),

              FooterText(),
              SocialIcons(),
            ],
          ),
        ),
      ],
    );
  }

  CustomScrollView buildCustomScrollForWebTablet(BoxConstraints constraints) {
    //// this method will handle all layout except Mobile
    return CustomScrollView(
      shrinkWrap: true,
      semanticChildCount: widget.gridItemCount > 1 ? 2 : 1,
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 100,
          ),
        ])),

        buildImageAndIntroOnDesktop(constraints),

        /// Divider
        SliverList(
            delegate: SliverChildListDelegate([
          SizedBox(
            height: 24,
          ),
          Divider(
            // height: 12,
            color: Colors.red,
            thickness: 2.4,
          ),
          SizedBox(
            height: 10,
          )
        ])),

        /// gridItems on count>1 else on List
        SliverGrid(
          delegate: SliverChildListDelegate([
            LisaEducation(),
            LisaExperience(),
            LisaDesignSkills(),
            LisaTechnicalSkills(),
            LisaAwards(),
            LisaFeture(),
            LisaPress(),
            LisaWriting(),
          ]),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.gridItemCount,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: _getCount(constraints),
          ),
        ),

        /// Bottom space to hold on stack
        SliverList(
          delegate: SliverChildListDelegate([
            SizedBox(
              height: 100,
            ),
          ]),
        )
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

  Column briefInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lisa Fischer",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "ProximaNova",
            color: Color.fromRGBO(5, 173, 134, .21),
            fontWeight: FontWeight.w700,
            fontSize: 80,
          ),
        ),
        Text(
          "👋",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        Text(
          "\nLisa is a designer focused on building brands and creating digital experiences — currently working at Google.",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          _texts1 + "\n\n" + _texts2,
          style: _textStyleS,
        ),
        Text(
          "— Based in the San Francisco Bay area",
          style: _textStyleS,
        ),
      ],
    );
  }
}
