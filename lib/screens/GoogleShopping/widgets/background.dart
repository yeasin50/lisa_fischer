import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

class Background extends StatelessWidget {
  final double maxWidth;

  const Background({
    Key? key,
    required this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: AspectRatio(
        aspectRatio: 7 / 8,
        child: BlurHash(
          hash:
              ".EL;55RjD4r=S\$oyenx]axRPkXj@e-ofq[WBMdVst7ofWB.ma0x]ozVsa|bIt,bcxvV?MxWBfk%\$ivtRaxV@oybGyEtlkXV@aKV@WBaKjrf+oKozayjF",
          image:
              "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1519857189311-F5WHSJVM5LMJP4H529WB/logo+piecing.gif?format=${maxWidth}w",
          imageFit: BoxFit.cover,
        ),
      ),
    );
  }
}
