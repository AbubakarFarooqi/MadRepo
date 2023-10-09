import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Task1()));
}

class Task1 extends StatefulWidget {
  const Task1({super.key});

  @override
  State<Task1> createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  String _howAreYou = "...";
  void _openPageAbout({BuildContext context, bool fullscreenDialog = false}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => About(),
      ),
    );
  }

  void _openPageGratitude(
      {BuildContext context, bool fullscreenDialog = false}) async {
    final String _gratitudeResponse = await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: fullscreenDialog,
        builder: (context) => Gratitude(
          radioGroupValue: -1,
        ),
      ),
    );
    _howAreYou = _gratitudeResponse ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => _openPageGratitude(context: context),
          tooltip: 'About',
          child: Icon(Icons.sentiment_satisfied),
        ),
        appBar: AppBar(
          title: Text('Navigator'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () => _openPageAbout(
                context: context,
                fullscreenDialog: true,
              ),
            ),
          ],
        ));
  }
}

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text('About Page'),
        ),
      ),
    );
  }
}
