import 'package:flutter/material.dart';

import 'widgets.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LockStatus(),
                SizedBox(height: 20),
                AuthenticationOnGShop(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
