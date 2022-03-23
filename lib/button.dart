import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  bool? isResponsive;
  double? width;

  Button({Key? key, this.width, this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      child: Row(
        children: [
          Image.asset('images/')
        ],
      ),
    );
  }
}

