import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final String _gifPath =
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1519857189311-F5WHSJVM5LMJP4H529WB/logo+piecing.gif?format=2500w";
  @override
  Widget build(BuildContext context) {
    return BlurHash(
      hash:
          '.4N-1Q~WbHxuoft7of-;ayWVWBj[j[j[E1axs;j[WBazfR%MWBj[offka|f7WBWUWBs:j[ayfP%MayoLayaya{ayR*j[ayjaofjtay%Mayj[j[ayayay',
      image: _gifPath,
      imageFit: BoxFit.cover,
    );
  }
}
