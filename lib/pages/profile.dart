import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Homepage.dart';

class one_page extends StatelessWidget {
  List img = [
    "apbg2.png",
    "apbg1.jpg",
    "apbg.jpg",
  ];

  one_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: img.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/" + img[index]),
                    fit: BoxFit.cover),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  top: 200,
                  left: 20,
                  right: 50,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Welcome',
                          style: const TextStyle(
                              fontSize: 50,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        const Text('press start to enter', style: TextStyle(
                        fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0)),),

                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),

                        ElevatedButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Homepage() ) ));
                        }, child: const Text('Start'))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
