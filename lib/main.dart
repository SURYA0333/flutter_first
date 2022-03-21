import 'package:flutter/material.dart';
import 'package:flutter_application_1/Homepage.dart';
import 'package:flutter_application_1/profile.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      color: Color.fromARGB(255, 255, 255, 255),
      home: one_page(),
    );
  }
}
