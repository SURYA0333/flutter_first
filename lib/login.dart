// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/settings.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 32);
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();

  movetoHomepage() async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(milliseconds: 800));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => const hello()));
      setState(() {
        changebutton = false;
      });
    }
  }

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
          body: SingleChildScrollView(
            child: Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 32,
                  ),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                          width: 30,
                        ),
                        Text(
                          "Welcome $name",
                          style: const TextStyle(
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
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40))),
                              hintText: 'Enter your email or user-name',
                              labelText: 'User-Name',
                            ),
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Username cannot be empty";
                              }
                              return null;
                            },
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                              hintText: 'Enter your password',
                              labelText: 'Password',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "password connat be empty";
                              } else if (value.length <8) {
                                return "password length must be atleast 8";
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => hello()));
                          },
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 17, 41, 255)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          width: 20,
                        ),
                        Material(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius:
                              BorderRadius.circular(changebutton ? 100 : 30),
                          child: InkWell(
                            onTap: () => movetoHomepage(),
                            child: Ink(
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 500),
                                alignment: Alignment.center,
                                width: changebutton ? 60 : 150,
                                height: changebutton ? 50 : 40,
                                child: changebutton
                                    ? Text(
                                        'Done',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    : Text(
                                        'Login',
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 255, 255, 255),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
