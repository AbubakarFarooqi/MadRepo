import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_1/widgets/GridViewWidget.dart';
import 'package:quiz_1/widgets/OrientationBuilderWidget.dart';
import 'package:quiz_1/widgets/OrientationLayoutWidget.dart';
import '/widgets/OrientationLayoutIconWidget.dart';

void main() {
  runApp(MaterialApp(
    home: Task4(),
  ));
}

class Task4 extends StatelessWidget {
  const Task4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: OrientationBuilderWidget()),
    ));
  }
}

class Task3 extends StatelessWidget {
  const Task3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:
          Padding(padding: const EdgeInsets.all(20.0), child: GridViewWidget()),
    ));
  }
}

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: OrientationLayoutWidget()),
    ));
  }
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: OrientationLayoutIconWidget(),
        ),
      ),
    ));
  }
}
