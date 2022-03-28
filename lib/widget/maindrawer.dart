import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/settings.dart';

import '../pages/login.dart';

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
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
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
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.blue,
              ),
              title: const Text('Profile',
              style: TextStyle(color: Colors.blue,),),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => hello()),
            );
              },
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.gear,
                color: Colors.blue,
              ),
              title: const Text('Settings', style: TextStyle(color: Colors.blue,),),
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => one_page()),
            );
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone_solid,
                color: Colors.blue,
              ),

              title: const Text('Contact-Us', style: TextStyle(color: Colors.blue,),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.arrow_right,
                color: Colors.blue,
              ),
              
              title: const Text('Log-in', style: TextStyle(color: Colors.blue,),),
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
