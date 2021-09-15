import 'package:flutter/material.dart';

class MobieViewWrapper extends StatelessWidget {
  final Widget child;
  const MobieViewWrapper({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}
