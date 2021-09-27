import 'package:flutter/material.dart';

class Tickets extends StatelessWidget {
  ///* It seems may hard-coded but we are avoiding calling another Query
  final bool isMobileView;
  const Tickets({
    Key? key,
    this.isMobileView = false,
  }) : super(key: key);

  get _space => SizedBox(
        height: 20,
      );
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            //* Tickets
            AspectRatio(
              aspectRatio: 750 / 39,
              child: Image.asset(
                "images/tickets_header.jpeg",
                fit: BoxFit.cover,
              ),
            ),

            if (!isMobileView)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "images/ticket_L.jpeg",
                    fit: BoxFit.cover,
                    height: constraints.maxWidth * .4,
                    width: constraints.maxWidth * 1 / 3 - 10,
                  ),
                  Image.asset(
                    "images/ticket_R.jpeg",
                    fit: BoxFit.cover,
                    height: constraints.maxWidth * .4,
                    width: constraints.maxWidth * 2 / 3 - 10,
                  ),
                ],
              ),

            if (isMobileView)
              Column(
                children: [
                  Image.asset(
                    "images/ticket_L.jpeg",
                    fit: BoxFit.cover,
                    height: constraints.maxWidth * .4,
                    width: constraints.maxWidth,
                  ),
                  _space,
                  Image.asset(
                    "images/ticket_R.jpeg",
                    fit: BoxFit.cover,
                    height: constraints.maxWidth * .4,
                    width: constraints.maxWidth,
                  ),
                ],
              ),
            _space,

            Image.asset(
              "images/ticket_B.jpeg",
              width: constraints.maxWidth,
              height: constraints.maxWidth * .75,
              fit: BoxFit.cover,
            ),
          ],
        );
      },
    );
  }
}
