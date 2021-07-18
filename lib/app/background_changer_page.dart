import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundChangerPage extends StatefulWidget {
  const BackgroundChangerPage({Key? key}) : super(key: key);

  @override
  _BackgroundChangerPageState createState() => _BackgroundChangerPageState();
}

class _BackgroundChangerPageState extends State<BackgroundChangerPage> {
  Color _color = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        color: _color,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => changeColor(),
        child: Icon(Icons.refresh),
      ),
    );
  }

  void changeColor() {
    setState(() {
      final random = Random();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }
}
