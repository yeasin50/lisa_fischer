import 'package:flutter/material.dart';

import 'components/contact_form.dart';
import 'components/gif_.dart';
import 'components/header.dart';

class LContactBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContactBodyDesktopTablet();
  }
}

class ContactBodyDesktopTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  GetInTouchBrief(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ConstrainedBox(
                        constraints:
                            BoxConstraints(maxWidth: constraints.maxWidth * .5),
                        child: ContactGif(),
                      ),
                      ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: constraints.maxWidth * .5,
                          ),
                          child: ContactForm()),
                    ],
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
