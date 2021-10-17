import 'package:flutter/material.dart';
import 'package:portfolio/configs/config.responsive.dart';
import 'package:portfolio/providers/provider.navigator.dart';
import 'package:portfolio/widgets/widgets.dart';
import 'package:provider/provider.dart';

class StateCG extends StatelessWidget {
  const StateCG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
            mobile: getS(context),
            tablet: getS(context),
            desktop: getS(context)));
  }

  getS(context) => Column(
        children: [
          LSHeader().navigators(context),
          Consumer<PageNotifier>(
            builder: (context, value, child) {
              return Text(value.pageName.toString());
            },
          )
        ],
      );
}

class DummyHome extends StatelessWidget {
  const DummyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("DummyHome"),
    );
  }
}

class DummyHome1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("DummyHome1"),
    );
  }
}

class DummyHome2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("DummyHome2"),
    );
  }
}
