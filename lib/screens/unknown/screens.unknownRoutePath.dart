import 'package:flutter/material.dart';
import 'package:portfolio/utils/utils.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dynamicAppLabel(
      context: context,
      label: "Coundn't found 🤐",
    );
    return Scaffold(
      body: Center(
        child: Text("Couldnot found"),
      ),
    );
  }
}
