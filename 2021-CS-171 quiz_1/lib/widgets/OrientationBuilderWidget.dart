import 'package:flutter/material.dart';

class OrientationBuilderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          // Portrait mode: Yellow container
          return Container(
            color: Colors.yellow,
            child: Center(
              child: Text(
                'Portrait Mode',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          );
        } else {
          // Landscape mode: Green container
          return Container(
            color: Colors.green,
            child: Center(
              child: Text(
                'Landscape Mode',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          );
        }
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('OrientationBuilderWidget Example'),
      ),
      body: Center(
        child: OrientationBuilderWidget(),
      ),
    ),
  ));
}
