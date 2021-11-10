import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';

AspectRatio mwBHImage({
  required String hash,
  required String imageUrl,
  double? width,
  double aspectR = 750 / 332,
  BoxFit fit = BoxFit.cover,
}) {
  return AspectRatio(
    aspectRatio: aspectR,
    child: BlurHash(
      hash: hash,
      image: width != null ? "$imageUrl?format=${width}w" : imageUrl,
      imageFit: fit,
    ),
  );
}
