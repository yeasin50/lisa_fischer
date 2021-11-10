import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../configs/configs.dart';
import '../../../../widgets/widgets.dart';
import '../../../constants/constants.dart';
import '../../../utils/utils.dart';
import '../utils/utils.dart';

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
              style: AppTextStyles.sub26,
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
        mwBHImage(
          hash: gshopLogoImage.hash,
          imageUrl: gshopLogoImage.imageUrl,
          width: maxWidth,
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
                style: AppTextStyles.sub26.copyWith(
                  fontSize: 26,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: " + ",
                style: AppTextStyles.sub26.copyWith(
                  fontSize: 26,
                  color: kColorDash,
                ),
              ),
              TextSpan(
                text: "the Google four brand colors",
                style: AppTextStyles.sub26.copyWith(
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
                style: AppTextStyles.subHeader.copyWith(
                  color: kColorDash,
                ),
              ),
              TextSpan(
                text: "Brand equity",
              )
            ],
          ),
          style: AppTextStyles.subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
        // solution2(),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        // DesktopMobileUserFlow(maxWidth: maxWidth),

        ///* `Solution 3`
        // solution3(),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }

  Widget solution3() {
    final _infoText = Text(
      "Ensure scalability of Buy on Google design for use across marketing communications & multiple Google destinations: Search, Shopping, Assistant, Images, YouTube.",
      style: AppTextStyles.subHeader.copyWith(
        height: 1.5,
      ),
    );

    final _image = mwBHImage(
      hash: solution3Cover.hash,
      imageUrl: solution3Cover.imageUrl,
      aspectR: 750 / 451,
      width: maxWidth,
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
                style: AppTextStyles.title,
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
                    style: AppTextStyles.title,
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
      style: AppTextStyles.subHeader.copyWith(
        height: 1.5,
      ),
    );

    final _image = mwBHImage(
      hash: solution2Cover.hash,
      imageUrl: solution2Cover.imageUrl,
      aspectR: 1500 / 626,
      width: maxWidth,
      fit: BoxFit.cover,
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
                style: AppTextStyles.title,
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
                    style: AppTextStyles.title,
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
      style: AppTextStyles.subHeader.copyWith(
        height: 2,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
      ),
    );

    final _image = mwBHImage(
      hash: solution1Cover.hash,
      imageUrl: solution1Cover.imageUrl,
      fit: BoxFit.cover,
      aspectR: 750 / 486,
      width: maxWidth,
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
                style: AppTextStyles.title,
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
                    style: AppTextStyles.title,
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
  final double maxWidth;

  const DesktopMobileUserFlow({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichTextInParentheses(
          text: "Desktop User Flow",
          textStyle: AppTextStyles.textParan20,
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
                style: AppTextStyles.subHeader.copyWith(
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
          style: AppTextStyles.subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        // gShop search gif

        mwBHImage(
          hash: gshopOnWebSearch.hash,
          imageUrl: gshopOnWebSearch.imageUrl,
          aspectR: 24 / 17,
          width: maxWidth,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),

        RichTextInParentheses(
          text: "Mobile  User Flow",
          textStyle: AppTextStyles.textParan20,
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
                style: AppTextStyles.subHeader.copyWith(
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
          style: AppTextStyles.subHeader,
        ),

        SizedBox(
          height: columnSpace.height! * 1.5,
        ),

        mwBHImage(
          hash: gshopOnMobileSearch.hash,
          imageUrl: gshopOnMobileSearch.imageUrl,
          aspectR: 18 / 15,
          width: maxWidth,
        ),

        SizedBox(
          height: columnSpace.height! * 3,
        ),
      ],
    );
  }
}
