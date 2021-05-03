import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LSMenu extends StatefulWidget {
  const LSMenu({Key? key, required this.width}) : super(key: key);

  @override
  _LSMenuState createState() => _LSMenuState();
  final double width;
}

class _LSMenuState extends State<LSMenu> {
  bool _isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: widget.width,
          color: Colors.black,
          padding: const EdgeInsets.only(bottom: 8, top: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: InkWell(
                  onTap: () => setState(() => _isOpen = !_isOpen),
                  onHover: (value) {
                    if (value) setState(() => _isOpen = true);
                  },
                  child: Text("MENU",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                      )),
                ),
              ),
              if (_isOpen)
                Column(
                  mainAxisSize: MainAxisSize.min,

                  ///TODO:: set Navigator
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
                )
            ],
          )),
    );
  }
}

class MenuItemLS extends StatefulWidget {
  final String text;
  final Function onPress;

  const MenuItemLS({required this.text, required this.onPress});

  @override
  _MenuItemLSState createState() => _MenuItemLSState();
}

class _MenuItemLSState extends State<MenuItemLS> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onPress(),
      onHover: (value) {
        if (value)
          setState(() => _isHover = true);
        else
          setState(() => _isHover = false);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
        ),
        child: Text(
          widget.text,
          style: GoogleFonts.lato(
            textStyle: TextStyle(
              shadows: [
                Shadow(
                  color: Colors.white,
                  offset: Offset(0, -5),
                )
              ],
              color: Colors.transparent,
              decoration: TextDecoration.underline,
              decorationColor: _isHover ? Colors.blue : Colors.transparent,
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
