import 'package:flutter/material.dart';

class OrientationLayoutIconWidget extends StatelessWidget {
  OrientationLayoutIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final _orientation = MediaQuery.of(context).orientation;
    if (_orientation == Orientation.portrait) {
      return Row(
        children: [
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
          Icon(Icons.abc_outlined),
        ],
      );
    } else {
      return Row(
        children: [
          Row(
            children: [
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
              Icon(Icons.abc_outlined),
            ],
          ),
          Row(
            children: [
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
              Icon(Icons.one_x_mobiledata),
            ],
          ),
        ],
      );
    }
  }
}
