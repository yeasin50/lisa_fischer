import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/footer_text.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/header.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/main_footer.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/mobile/menu.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/components/social_icons.dart';
import 'package:portfolio/config/constants.dart';

import 'components/contact_form.dart';
import 'components/gif_.dart';
import 'components/header.dart';

class ContactBodyDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(height: kTopLevelStackSpace),
                  GetInTouchBrief(),
                  SizedBox(height: 24),
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
                  ),
                  SizedBox(height: kTopLevelStackSpace),

                  /// we arent calling `Responsive` , because it will cause extra query, so we that we can handle tablet mode from here
                  if (constraints.maxHeight < kTabletMaxWidth) footerRow(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ContactBodyMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              LSMenu(),
            ],
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(12),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              [
                LSHeader().buildLogo(),
                GetInTouchBrief(),
                ContactGif(),
                const SizedBox(height: 24),
                ContactForm(),
                const SizedBox(height: 24),
                Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
                FooterText(),
                SocialIcons(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
