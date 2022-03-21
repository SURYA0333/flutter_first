import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact_us.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/settings.dart';

import 'login.dart';

class maindrawer extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  get buildMenuItem => null;
      final name = 'G SURYA';
    final email = 'suryakrish343@gmail.com';
    final urlimage =
        'https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1339063090495717377%2FTpbIUpq8_400x400.jpg&imgrefurl=https%3A%2F%2Ftwitter.com%2Fsuryakr60168650&tbnid=cDhOqBrEm-6-uM&vet=12ahUKEwjHt9_ipLj2AhUmRGwGHfmmC4EQMygBegQIARBY..i&docid=M7vWplSroB0QqM&w=400&h=400&itg=1&q=suryakrish&ved=2ahUKEwjHt9_ipLj2AhUmRGwGHfmmC4EQMygBegQIARBY';
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 255, 254, 240),
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 40),
            
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => hello()),
            );
              },
            ),
            ListTile(
              title: const Text('Profile Settings'),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => hello()),
            );
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => one_page()),
            );
              },
            ),
            ListTile(
              title: const Text('Contact-Us'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('About-Us'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Log-in'),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
              },
            ),
          ],
        ),
      ),
    );
  }
}
