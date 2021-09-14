import 'package:flutter/material.dart';

class ContactGif extends StatelessWidget {
  final String _contactGifUrl =
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1517114457177-JPG87WUL480G87Z3FGQ4/ke17ZwdGBToddI8pDm48kJ3InPYDKo3ddr_LNhqEpBhZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzcCtrtwnjJAZ6tW4NAfZc42vRdHOPG-FDVIQHKKtXDzqw1ffAcs1DC6GLRztejnGQ/lisasuefischer_contact.gif?format=750w";
  @override
  Widget build(BuildContext context) {
    return FadeInImage.assetNetwork(
        placeholder: "assets/images/placeHolder.png", image: _contactGifUrl);
  }
}
