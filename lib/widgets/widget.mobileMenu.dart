import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LSMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ExpansionTile(
        trailing: SizedBox(),
        backgroundColor: Colors.black,
        collapsedBackgroundColor: Colors.black,
        expandedAlignment: Alignment.center,
        expandedCrossAxisAlignment: CrossAxisAlignment.center,
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
          MenuItemLS(
              text: "WORK",
              onPress: () {
                print("Work");
              }),
          MenuItemLS(
              text: "ABOUT",
              onPress: () {
                print("About Nav");
              }),
          MenuItemLS(
              text: "CONTACT",
              onPress: () {
                print("Contact Nav");
              }),
        ],
      ),
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
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
