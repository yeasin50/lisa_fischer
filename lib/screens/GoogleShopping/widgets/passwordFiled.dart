import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.textStyles.dart';

class AuthenticationOnGShop extends StatefulWidget {
  const AuthenticationOnGShop({Key? key}) : super(key: key);

  @override
  State<AuthenticationOnGShop> createState() => _AuthenticationOnGShopState();
}

class _AuthenticationOnGShopState extends State<AuthenticationOnGShop> {
  get _borderColor => Colors.black;

  get _borderThickness => .7;

  bool _showError = false;
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 280,
      ),
      child: SizedBox(
        height: 38 + 44,
        child: Stack(
          children: [
            if (_showError)
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 34,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                  color: Colors.red,
                  child: Text(
                    "Please try again.",
                    style: AppTextStyles.hintTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            Align(
              alignment: Alignment.topCenter,
              child: TextField(
                onChanged: (value) => setState(() => _password = value),
                decoration: InputDecoration(
                  // errorText: _showError ? "Please try again." : null, //* doesnt event near the main UI
                  errorStyle: AppTextStyles.hintTextStyle.copyWith(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    // background: Paint()..color = Colors.red,
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: Colors.red,
                      width: _borderThickness,
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() => _showError = _password.isEmpty);
                    },
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: Colors.black54,
                    ),
                  ),
                  hintText: "Password",
                  hintStyle: AppTextStyles.hintTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderThickness,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderThickness,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
