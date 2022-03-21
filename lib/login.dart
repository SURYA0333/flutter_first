import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings.dart';

class login extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 32);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            iconTheme: const IconThemeData(color: Color.fromARGB(255, 0, 0, 0)),
            title: Row(
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  height: 50,
                )
              ],
            ),
          ),
          body: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(32.8),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 70,
                      width: 30,
                    ),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                      width: 20,
                    ),
                    Material(
                      elevation: 0,
                      child: TextFormField(
                        autofocus: false,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                          hintText: 'Enter your email or user-name',
                          labelText: 'User-Name',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Material(
                      elevation: 0,
                      child: TextFormField(
                        autofocus: false,
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    const Material(
                      child: Text(
                        'Forget password?',
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Material(
                      borderRadius: const BorderRadius.all(const Radius.circular(40)) ,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const hello()),
                          );
                        },
                        child: const Text('Login'),
                        style: const ButtonStyle(),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
