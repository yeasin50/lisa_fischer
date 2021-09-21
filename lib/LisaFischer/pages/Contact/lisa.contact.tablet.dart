import 'package:flutter/material.dart';
import 'package:portfolio/LisaFischer/constants/constants.dart';
import 'package:portfolio/LisaFischer/pages/About/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/pages/Contact/widgets/widgets.dart';
import 'package:portfolio/LisaFischer/widgets/widgets.dart';
import 'package:portfolio/configs/configs.dart';

class TabletView extends StatelessWidget {
  final BoxConstraints constraints;
  const TabletView({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: constraints.maxWidth * .5),
            child: GetInTouchBrief(),
          ),
          SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth * .45,
                ),
                child: ContactGif(),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: constraints.maxWidth * .5,
                ),
                child: ContactForm(),
              ),
            ],
          ),
          spaceBetweenColumnItemsOnDesktop,
          divider,
          spaceBetweenColumnItemsOnDesktop,

          //* Contact form
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ConnectOnAbout(),
                  SizedBox(width: 100),
                  ContactOnAbout(),
                ],
              ),
              CustomButton(
                label: "GET IN TOUCH",
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
