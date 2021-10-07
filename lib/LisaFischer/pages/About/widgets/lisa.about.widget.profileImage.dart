import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

// ignore: must_be_immutable
class ProfileImage extends StatelessWidget {
  final String _imgPath =
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1514193347159-OVZEZ87GS1K87OAZYPSF/ke17ZwdGBToddI8pDm48kOik2hOLRD8S8JpZyC89v-B7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmujyyI7Frso6MRdplGTbhDrIwJxMeaDJCNId5o8EbAHMFQU68b-XfWeWUt0_hnFNU/lisa+fischer_headshot_square_2016.jpg?format=500w";
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: AspectRatio(
        aspectRatio: 5 / 5,
        child: BlurHash(
          hash: "LADu_M?b0{sm008_0Kay.8-;~CNG",
          image: _imgPath,
        ),
      ),
    );
  }
}
