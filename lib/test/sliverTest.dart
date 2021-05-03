import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: TestBody(),
      ),
    );
  }
}

class TestBody extends StatefulWidget {
  @override
  _TestBodyState createState() => _TestBodyState();
}

class _TestBodyState extends State<TestBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                5,
                (index) => Container(
                  height: 100,
                  color: index % 2 == 0 ? Colors.green : Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("Item $index"),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                6,
                (index) => Container(
                  height: 100,
                  color: index % 2 == 0 ? Colors.pink : Colors.red,
                  alignment: Alignment.center,
                  child: Text("Item $index"),
                ),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: List.generate(
                8,
                (index) => Container(
                      height: 40,
                      width: 40,
                      color: index % 3 == 0
                          ? Colors.lightBlueAccent
                          : Colors.redAccent,
                    )),
          )
        ],
      ),
    );
  }
}
