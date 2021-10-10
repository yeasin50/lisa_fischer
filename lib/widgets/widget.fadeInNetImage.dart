import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../configs/config.constants.dart';

///fadeInImageNetWork
fadeNetImage(BoxConstraints constraints, String _url) =>
//  Padding(
//       padding: const EdgeInsets.all(5.0),
//       child:
    FadeInImage.assetNetwork(
      placeholder: placeHolderImagePath,
      image: _url,
      width: constraints.maxWidth,

      // imageScale: .67,
      fit: BoxFit.fitWidth,
      // ),
    );

fadeNetImageH6(
  BoxConstraints constraints,
  String url,
) {
  return FadeInImage.assetNetwork(
    placeholder: placeHolderImagePath,
    fit: BoxFit.fitWidth,
    width: constraints.maxWidth,
    height: constraints.maxWidth * .6,
    image: url,
  );
}

ConstrainedBox fadeInImageHalf(BoxConstraints constraints, String _url) =>
    ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: constraints.maxWidth * .49,
        minWidth: constraints.maxWidth * .49,
        minHeight: constraints.maxWidth * .3,
        maxHeight: constraints.maxWidth * .3,
      ),
      child: FadeInImage.assetNetwork(
        placeholder: placeHolderImagePath,
        image: _url,
        alignment: Alignment.center,
        fit: BoxFit.cover,
      ),
    );
