import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    final crossAxisCount = (orientation == Orientation.portrait) ? 2 : 4;
    return SingleChildScrollView(
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 16.0, // Adjust spacing as needed
          mainAxisSpacing: 16.0, // Adjust spacing as needed
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return Text("grid");
        },
      ),
    );
  }
}
