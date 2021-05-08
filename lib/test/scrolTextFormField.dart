import 'package:flutter/material.dart';

class ScrollTextFormField extends StatelessWidget {
  final _inputDecoration = InputDecoration(
    contentPadding: EdgeInsets.all(10),
    border: InputBorder.none,
  );

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 200,
          minHeight: 100,
        ),
        child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.green.withOpacity(.5),
              border: Border.all(
                color: Colors.black,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(
                10,
              )),
          padding: EdgeInsets.all(5),
          //// `Controll  height`
          child: Scrollbar(
              isAlwaysShown: true,
              showTrackOnHover: true,
              controller: _controller,
              child: SingleChildScrollView(
                controller: _controller,
                child: TextFormField(
                  decoration: _inputDecoration,

                  /// set this according to BoxSize
                  minLines: 10,
                  maxLines: null,
                ),
              )),
        ),
      ),
    );
  }
}
