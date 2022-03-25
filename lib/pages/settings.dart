import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  const hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello User'),
        ),
      ),
    );
  }
}
