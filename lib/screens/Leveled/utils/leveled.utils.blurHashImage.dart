import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

AspectRatio mwBHImage({
  required String hash,
  required String imageUrl,
  double aspectR = 750 / 332,
  BoxFit fit = BoxFit.cover,
}) {
  return AspectRatio(
    aspectRatio: aspectR,
    child: BlurHash(
      hash: hash,
      image: imageUrl,
      imageFit: fit,
    ),
  );
}
