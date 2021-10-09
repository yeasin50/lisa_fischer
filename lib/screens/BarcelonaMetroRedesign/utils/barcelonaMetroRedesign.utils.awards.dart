import 'package:flutter/cupertino.dart';
import 'package:portfolio/widgets/widgets.dart';

final awards = [
  //* Awards
  // Winner of the Applied Arts Creative Excellence Award, March 2017
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Winner of the": false,
      "Applied Arts Creative Excellence Award,": true,
      "March 2017": false,
    },
    domainUrl: "http://www.appliedartsmag.com/winners_gallery/",
  ),
  // Winner in Applied Arts Magazine Awards, July 2016
  ///FIXME: recheck why both have same url
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Winner in": false,
      "Applied Arts Magazine Awards,": true,
      "July 2016": false,
    },
    domainUrl: "http://www.appliedartsmag.com/winners_gallery/",
  ),
  // Bronze Award in IDA International Design Awards, May 2017
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Bronze Award in": false,
      "IDA International Design Awards,": true,
      "May 2017": false,
    },
    domainUrl:
        "https://idesignawards.com/winners/index.php?compNum=IDA%2016&level=student",
  ),
  // Semifinalist in Adobe Design Achievement Awards, May 2016
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Semifinalist in": false,
      "Adobe Design Achievement Awards,": true,
      "May 2016": false,
    },
    domainUrl:
        "https://idesignawards.com/winners/index.php?compNum=IDA%2016&level=student",
  ),

  // Finalist in SCAD Secession, June 2016
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Finalist in": false,
      "SCAD Secession,": true,
      "June 2016": false,
    },
    domainUrl: "http://www.scadsecession.com/",
  ),

  //Featured in reDSGN, Jan. 2016
  HoverEffectOnLink(
    key: UniqueKey(),
    textInOrder: {
      "Featured in": false,
      "reDSGN,": true,
      "Jan. 2016": false,
    },
    domainUrl: "http://redsgn.co/barcelona-metro-redesign-1216/",
  ),
];
