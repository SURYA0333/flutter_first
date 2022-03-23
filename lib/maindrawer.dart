import 'package:flutter/material.dart';
import 'package:flutter_application_1/contact_us.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/settings.dart';

import 'login.dart';

class maindrawer extends StatelessWidget {

  get buildMenuItem => null;
      final name = 'G SURYA';
    final email = 'suryakrish343@gmail.com';
    final urlimage =
        'https://pbs.twimg.com/profile_images/1339063090495717377/TpbIUpq8_400x400.jpg';
  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 255, 254, 240),
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text(name),
                accountEmail: Text(email) ,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(urlimage),
                ),
                ),
          ),
            
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
