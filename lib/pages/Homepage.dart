import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/models_data.dart';
import 'package:flutter_application_1/widget/maindrawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final padding = const EdgeInsets.symmetric(horizontal: 20);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        drawer: maindrawer(),
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
          title: Row(
            children: <Widget>[
              Image.asset(
                'images/logo.png',
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
