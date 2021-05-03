import 'package:flutter/material.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/components/grid_item.dart';
import 'package:portfolio/Googlers/Lisa_Fischer/pages/Work/model/cart.dart';

class ContainerTest extends StatefulWidget {
  @override
  _ContainerTestState createState() => _ContainerTestState();
}

class _ContainerTestState extends State<ContainerTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: GridItem(
            imageUrl: GridItemC.lisaWorklist[0].backgroundUrl,
            onPress: () {},
            subtitle: GridItemC.lisaWorklist[0].subtitle,
            title: GridItemC.lisaWorklist[0].title,
            width: 440,
          ),
        ),
      ),
    );
  }
}
