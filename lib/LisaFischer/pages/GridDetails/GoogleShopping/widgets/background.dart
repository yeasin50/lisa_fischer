import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  final String _gifPath =
      "https://images.squarespace-cdn.com/content/v1/547fe426e4b0dc192edb1ed5/1519857189311-F5WHSJVM5LMJP4H529WB/logo+piecing.gif?format=2500w";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
        _gifPath,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) => SizedBox(),
      ),
    );
  }
}
