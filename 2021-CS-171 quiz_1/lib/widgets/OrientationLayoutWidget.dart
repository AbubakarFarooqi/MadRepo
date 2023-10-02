import 'package:flutter/material.dart';

class OrientationLayoutWidget extends StatelessWidget {
  const OrientationLayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _orientation = MediaQuery.of(context).orientation;
    if (_orientation == Orientation.portrait) {
      return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.yellow),
        child: Text("This is potrait Mode"),
      );
    } else {
      return Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(color: Colors.green),
        child: Text("This is Landscape Mode"),
      );
    }
  }
}
