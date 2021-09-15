import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/pages/GridDetails/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:url_launcher/url_launcher.dart';

class P3Challenge2Solutions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///The Challenge
        Center(
          child: RichTextInParentheses(
            text: "THE CHALLENGE",
          ),
        ),
        columnSpace,
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 827,
            ),
            child: Text(
              "How do you convey to users that products are transactable on Google across their Google shopping journey?",
              textAlign: TextAlign.center,
              style: MyTextStyles().sub26,
            ),
          ),
        ),

        SizedBox(
          height: kTopLevelStackSpace,
        ),

        ///`Solution 1`
        solution1(),

        columnSpace,

        //Gshop logo
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 300,
          ),
          child: FadeInImage.assetNetwork(
            placeholder: placeHolderImagePath,
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1592206819594-2Y1OOQMSW6IACML3OET9/ke17ZwdGBToddI8pDm48kHgeF6xw7HSVwCYTTeQdw017gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0iE65AXCN5486i28K9GUUCgVjv5ZSo0OWMgFo2W4vcGZk1Rs35klMuCxeyNIaYEgSg/buy+on+google+cart+hero+in+elevation-08.png?format=1000w",
          ),
        ),

        columnSpace,

        Center(
          child: RichTextInParentheses(
            text: "VISUAL DESIGN SOLUTION",
          ),
        ),
        columnSpace,
        Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 827,
            ),
            child: Text(
              "Cart as a buying metaphor   +   the Google four brand colors",
              textAlign: TextAlign.center,
              style: subHeaderTextStyle.copyWith(
                fontSize: 26,
                color: Colors.black,
              ),
            ),
          ),
        ),
        columnSpace,
        Center(
          child: Text(
            "User comprehension   +   Brand equity",
            style: MyTextStyles().subHeader,
          ),
        ),

        SizedBox(
          height: kTopLevelStackSpace,
        ),
        solution2(),

        SizedBox(
          height: kTopLevelStackSpace,
        ),

        DesktopMobileUserFlow(),
        columnSpace,

        ///`Solution 3`

        solution3(),

        columnSpace,
      ],
    );
  }

  Row solution3() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 200,
                ),
                child: Text(
                  "Ensure scalability of Buy on Google design for use across marketing communications & multiple Google destinations: Search, Shopping, Assistant, Images, YouTube.",
                  style: TextStyle(
                    fontFamily: kFproximaNova,
                    color: const Color(0xff737373),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: FadeInImage.assetNetwork(
            placeholder: placeHolderImagePath,
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593371429717-399E6BX3HCYTCEBIW9KW/ke17ZwdGBToddI8pDm48kGttJQ3fNJjEPJpWvJxnJ5x7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0qRGAtipPmBDa-K0OI3D5BM_VNprNPjtsnKQ3_2ravThonCkQUqLkSQrXw9s6QjMPw/buy+on+google+_shoppping+actionss-higher+res-332-03-32.png?format=750w",
          ),
        ),
      ],
    );
  }

  Row solution2() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: 200,
                ),
                child: Text(
                  "Rearchitect the Google Shopping search results page and product details page to introduce an intuitive Buy on Google user flow.",
                  style: MyTextStyles().subHeader.copyWith(
                        height: 2,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                ),
              ),
            ),
          ],
        ),
        columnSpace,
        Expanded(
          child: FadeInImage.assetNetwork(
              placeholder: placeHolderImagePath,
              image:
                  "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593370185981-ZRTILUE0US7N72K1TZ70/ke17ZwdGBToddI8pDm48kPYL8vMf5MK395rQIEZQsvF7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0gkB-ogLx65Ep68Jc3FEurvoKLIolQEeIY4vOEJZJ4JJze7s2JxfUzCZ9mTlu3vZCA/roller+coaster-34-34-35-34-34.png?format=1500w"),
        ),
      ],
    );
  }

  Row solution1() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 200,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  "Establish an identifiable icon representing products you can buy on Google.",
                  style: MyTextStyles().subHeader.copyWith(
                        height: 2,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                      ),
                ),
              ),
            ),
          ],
        ),
        columnSpace,
        Expanded(
          child: FadeInImage.assetNetwork(
            placeholder: placeHolderImagePath,
            image:
                "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1590350017132-ZJWLDOX3GSITLN1K7GLT/ke17ZwdGBToddI8pDm48kBe3s72x4TW__9H-J8QPN6d7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0pQYXULvgm9t5Zb8hmAX2a-2QVMc0DOsEw99humzWVrFVBcZcfL7QrKE_xBa0lpg2Q/buy+on+google+images+for+portfolioo-12.png?format=750w",
          ),
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
      mainAxisSize: MainAxisSize.min,
      children: [
        RichTextInParentheses(
          text: "Desktop User Flow",
          textStyle: MyTextStyles().textParan20,
        ),

        ///Starting from the `Google Search` homepage
        // we can use row and Inkwell Hover Effect here
        EasyRichText(
          "Starting from the Google Search homepage",
          defaultStyle: MyTextStyles().subHeader,
          patternList: [
            EasyRichTextPattern(
                targetString: "Google Search",
                style: MyTextStyles().subHeader.copyWith(
                      color: kColorDash,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://google.com/")),
          ],
        ),

        columnSpace,
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593358472652-A6IP5T382DZ1A7XSILMP/ke17ZwdGBToddI8pDm48kAHWeGNrnTNuaaRsQC5iQLWLPZHY9930KFuik00L7GzBKdq8kyNB6kzmmlKIayPDyODNVAVoT5JWrLXnFZMIhf1eKxxnxAGk445uFOpsZm_-/image-asset.gif?format=1000w",
        ),

        SizedBox(
          height: kTopLevelStackSpace,
        ),

        RichTextInParentheses(
          text: "Mobile  User Flow",
          textStyle: MyTextStyles().textParan20,
        ),

        columnSpace,

        ///Starting from the` Google Shopping` homepage
        // we can use row and Inkwell Hover Effect here
        EasyRichText(
          "Starting from the Google Shopping homepage",
          defaultStyle: MyTextStyles().subHeader,
          patternList: [
            EasyRichTextPattern(
                targetString: "Google Shopping",
                style: MyTextStyles().subHeader.copyWith(
                      color: kColorDash,
                    ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () => launch("https://shopping.google.com/")),
          ],
        ),

        SizedBox(
          height: kTopLevelStackSpace,
        ),
        FadeInImage.assetNetwork(
          placeholder: placeHolderImagePath,
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1593359373939-6PZMAHELDSJ4VAEKNIY9/ke17ZwdGBToddI8pDm48kAHWeGNrnTNuaaRsQC5iQLWLPZHY9930KFuik00L7GzBKdq8kyNB6kzmmlKIayPDyODNVAVoT5JWrLXnFZMIhf1eKxxnxAGk445uFOpsZm_-/image-asset.gif?format=750w",
        ),
        columnSpace,
      ],
    );
  }
}
