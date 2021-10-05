import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../configs/configs.dart';
import '../../widgets/widgets.dart';

class P3Challenge2Solutions extends StatelessWidget {
  final double maxWidth;
  final bool isMobile;

  const P3Challenge2Solutions({
    Key? key,
    required this.maxWidth,
    this.isMobile = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //* The Challenge
        Center(
          child: RichTextInParentheses(
            text: "THE CHALLENGE",
          ),
        ),
        SizedBox(
          height: columnSpace.height! * 3,
        ),
        Center(
          child: SizedBox(
            width: maxWidth * .75,
            child: Text(
              "How do you convey to users that products are transactable on Google across their Google shopping journey?",
              textAlign: TextAlign.center,
              style: MyTextStyles().sub26,
            ),
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        ////*`Solution 1`
        solution1(),

        columnSpace,

        //* Gshop logo
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206819594-2Y1OOQMSW6IACML3OET9/ke17ZwdGBToddI8pDm48kHgeF6xw7HSVwCYTTeQdw017gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iE65AXCN5486i28K9GUUCgVjv5ZSo0OWMgFo2W4vcGZk1Rs35klMuCxeyNIaYEgSg/buy+on+google+cart+hero+in+elevation-08.png?format=1000w",
          width: maxWidth * .4,
          height: maxWidth * .4,
          fit: BoxFit.cover,
        ),

        columnSpace,

        RichTextInParentheses(
          text: "VISUAL DESIGN SOLUTION",
        ),

        // columnSpace,

        //TODO:: align with +
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Cart as a buying metaphor",
                style: subHeaderTextStyle.copyWith(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: " + ",
                style: subHeaderTextStyle.copyWith(
                  fontSize: 26,
                  color: kColorDash,
                ),
              ),
              TextSpan(
                text: "the Google four brand colors",
                style: subHeaderTextStyle.copyWith(
                  fontSize: 26,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),

        columnSpace,

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "User comprehension ",
              ),
              TextSpan(
                text: "+ ",
                style: MyTextStyles().subHeader.copyWith(
                      color: kColorDash,
                    ),
              ),
              TextSpan(
                text: "Brand equity",
              )
            ],
          ),
          style: MyTextStyles().subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
        solution2(),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        DesktopMobileUserFlow(),

        ///* `Solution 3`
        solution3(),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }

  Widget solution3() {
    final _infoText = Text(
      "Ensure scalability of Buy on Google design for use across marketing communications & multiple Google destinations: Search, Shopping, Assistant, Images, YouTube.",
      style: TextStyle(
        fontFamily: kFproximaNova,
        color: const Color(0xff737373),
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );

    final _image = FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      image:
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593371429717-399E6BX3HCYTCEBIW9KW/ke17ZwdGBToddI8pDm48kGttJQ3fNJjEPJpWvJxnJ5x7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qRGAtipPmBDa-K0OI3D5BM_VNprNPjtsnKQ3_2ravThonCkQUqLkSQrXw9s6QjMPw/buy+on+google+_shoppping+actionss-higher+res-332-03-32.png?format=750w",
    );

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichTextInParentheses(
                text: "solution".toUpperCase(),
              ),
              columnSpace,
              Text(
                "03",
                style: titleTextStyle,
              ),
              columnSpace,
              _infoText,
              columnSpace,
              _image,
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextInParentheses(
                    text: "solution".toUpperCase(),
                  ),
                  columnSpace,
                  Text(
                    "03",
                    style: titleTextStyle,
                  ),
                  columnSpace,
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: maxWidth / 4,
                      child: _infoText,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: _image,
              ),
            ],
          );
  }

  Widget solution2() {
    final _text = Text(
      "Rearchitect the Google Shopping search results page and product details page to introduce an intuitive Buy on Google user flow.",
      style: MyTextStyles().subHeader.copyWith(
            height: 1.5,
          ),
    );

    final _image = FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      image:
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593370185981-ZRTILUE0US7N72K1TZ70/ke17ZwdGBToddI8pDm48kPYL8vMf5MK395rQIEZQsvF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0gkB-ogLx65Ep68Jc3FEurvoKLIolQEeIY4vOEJZJ4JJze7s2JxfUzCZ9mTlu3vZCA/roller+coaster-34-34-35-34-34.png?format=1500w",
    );

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichTextInParentheses(
                text: "solution".toUpperCase(),
              ),
              columnSpace,
              Text(
                "02",
                style: titleTextStyle,
              ),
              columnSpace,
              _text,
              columnSpace,
              _image,
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextInParentheses(
                    text: "solution".toUpperCase(),
                  ),
                  columnSpace,
                  Text(
                    "02",
                    style: titleTextStyle,
                  ),
                  columnSpace,
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: SizedBox(
                      width: maxWidth / 4,
                      child: _text,
                    ),
                  ),
                ],
              ),
              columnSpace,
              Expanded(
                child: _image,
              ),
            ],
          );
  }

  Widget solution1() {
    final _text = Text(
      "Establish an identifiable icon representing products you can buy on Google.",
      style: MyTextStyles().subHeader.copyWith(
            height: 2,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
          ),
    );

    final _image = FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      image:
          "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590350017132-ZJWLDOX3GSITLN1K7GLT/ke17ZwdGBToddI8pDm48kBe3s72x4TW__9H-J8QPN6d7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0pQYXULvgm9t5Zb8hmAX2a-2QVMc0DOsEw99humzWVrFVBcZcfL7QrKE_xBa0lpg2Q/buy+on+google+images+for+portfolioo-12.png?format=750w",
    );

    return isMobile
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichTextInParentheses(
                text: "solution".toUpperCase(),
              ),
              columnSpace,
              Text(
                "01",
                style: titleTextStyle,
              ),
              columnSpace,
              _text,
              columnSpace,
              _image,
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextInParentheses(
                    text: "solution".toUpperCase(),
                  ),
                  columnSpace,
                  Text(
                    "01",
                    style: titleTextStyle,
                  ),
                  columnSpace,
                  SizedBox(
                    width: maxWidth / 4,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: _text,
                    ),
                  ),
                ],
              ),
              columnSpace,
              Expanded(
                child: _image,
              ),
            ],
          );
  }
}

///`Desktop+Mobile User Flow`
class DesktopMobileUserFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "Desktop User Flow",
          textStyle: MyTextStyles().textParan20,
        ),

        SizedBox(
          height: columnSpace.height! * .5,
        ),

        //* Starting from the `Google Search` homepage
        // we can use row and Inkwell Hover Effect here

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Starting from the ",
              ),
              TextSpan(
                text: "Google Search ",
                style: MyTextStyles().subHeader.copyWith(
                      color: kColorDash,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://google.com/"),
              ),
              TextSpan(
                text: "Search homepage",
              ),
            ],
          ),
          style: MyTextStyles().subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        // gShop search gif
        AspectRatio(
          key: ValueKey("Gshop search on Web"),
          aspectRatio: 24 / 17,
          child: BlurHash(
            hash:
                "|3SY~#t7X;~p03IV0N%MEn%Mx[InMxaexux]RiM{00xuRPIV%Lxu%LRkt6kVRjoM-;%MD%D%t8%N00t6s,M{xtxtxtRjoIt8of.7RjIUbItRjYRi03WB%LocnhRkt7oes+_3ays:RjbHj[RjfiWBO^RjMxt7%fRPMxogt7",
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593358472652-A6IP5T382DZ1A7XSILMP/ke17ZwdGBToddI8pDm48kAHWeGNrnTNuaaRsQC5iQLWLPZHY9930KFuik00L7GzBKdq8kyNB6kzmmlKIayPDyODNVAVoT5JWrLXnFZMIhf1eKxxnxAGk445uFOpsZm_-/image-asset.gif?format=1000w",
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Mobile  User Flow",
          textStyle: MyTextStyles().textParan20,
        ),

        SizedBox(
          height: columnSpace.height! * .5,
        ),

        ///Starting from the` Google Shopping` homepage
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "Starting from the ",
              ),
              TextSpan(
                text: "Google Shopping ",
                style: MyTextStyles().subHeader.copyWith(
                      color: kColorDash,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://shopping.google.com/"),
              ),
              TextSpan(
                text: "homepage",
              ),
            ],
          ),
          style: MyTextStyles().subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        AspectRatio(
          key: ValueKey("Gshop search on mobileView"),
          aspectRatio: 18 / 15,
          child: BlurHash(
            hash:
                "|9QJ.mt71noz^ct7D\$ofOa-;j[M{ayoffQt7j[M{0Lay~Vj[9Gayxvfkoc%Mj[Rjayj]fkofj[Rj9ba|?Fj[IVayt8fkocxufQfPfQj[fQayfQj[bxfQngfQWYfQkCfRoJogfQt7j[ayfQRjayt7.8fRD\$ayx]fRWBfQjY",
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593359373939-6PZMAHELDSJ4VAEKNIY9/ke17ZwdGBToddI8pDm48kAHWeGNrnTNuaaRsQC5iQLWLPZHY9930KFuik00L7GzBKdq8kyNB6kzmmlKIayPDyODNVAVoT5JWrLXnFZMIhf1eKxxnxAGk445uFOpsZm_-/image-asset.gif?format=750w",
          ),
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }
}
