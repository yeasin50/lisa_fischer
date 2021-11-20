import 'package:flutter/material.dart';

import '../constants/constants.dart';


import '../constants/constants.dart';
import '../providers/provider.navigator.dart';

//* hide the current page Tab. maybe nextTime im gonna replace `ExpansionTile` with animated somthing to have collaps +current page
class LSMenu extends StatelessWidget {
  @override
  Widget build(BuildContext contextMenu) {
    PageNotifier pageNotifier =
        Provider.of<PageNotifier>(contextMenu, listen: false);

    return ExpansionTile(
      trailing: SizedBox(),
      backgroundColor: Colors.black,
      collapsedBackgroundColor: Colors.black,
      expandedAlignment: Alignment.center,
      expandedCrossAxisAlignment: CrossAxisAlignment.center,
      onExpansionChanged: (value) {
        print("value $value");
      },
      title: Center(
        child: Transform.translate(
          offset: Offset(16, 0),
          child: Text(
            "MENU",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
              color: Colors.white,
            ),
          ),
        ),
      ),
      children: [
        if (pageNotifier.pageName != null)
          MenuItemLS(
              text: "WORK",
              onPress: () {
                // print("Work");

                pageNotifier.changeScreen(pageName: null);
              }),
        if (pageNotifier.pageName != PageName.about)
          MenuItemLS(
              text: "ABOUT",
              onPress: () {
                // print("About Nav");
                pageNotifier.changeScreen(pageName: PageName.about);
              }),
        if (pageNotifier.pageName != PageName.contact)
          MenuItemLS(
              text: "CONTACT",
              onPress: () {
                // print("Contact Nav");
                pageNotifier.changeScreen(pageName: PageName.contact);
              }),
      ],
    );
  }
}

class MenuItemLS extends StatelessWidget {
  final String text;
  final Function onPress;
  const MenuItemLS({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 4),
      child: GestureDetector(
        onTap: () => onPress(),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: AppTextStyles.fontFamily,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
