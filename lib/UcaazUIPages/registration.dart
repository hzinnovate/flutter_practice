import 'dart:ui';
import "package:flutter/material.dart";
import 'package:hello/UcaazUIPages/bottomNavigationBar.dart';
import 'package:hello/UcaazUIPages/ucaazHome.dart';

class Registration extends StatefulWidget {
  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: const Color(0xfffcf7f1),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Image(
                        image: AssetImage("assets/logo.png"),
                        height: 100,
                        width: 100),
                    const SizedBox(height: 30),
                    TextFormField(
                      cursorColor: Colors.black,
                      initialValue: '',
                      // maxLength: 20,
                      decoration: const InputDecoration(
                        // icon: Icon(Icons.favorite),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(
                          color: Color(0xFFababab),
                        ),
                        // helperText: 'Helper text',
                        suffixIcon: Icon(
                          Icons.question_mark,
                          color: Color(0xFF000000),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFf17e4e), width: 2.0),
                        ),
                        // fillColor: Colors.white,
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFf17e4e), width: 2.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      cursorColor: Colors.black,
                      initialValue: '',
                      // maxLength: 20,
                      // ignore: prefer_const_constructors
                      decoration: InputDecoration(
                        // icon: Icon(Icons.favorite),
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Color(0xFFababab),
                        ),
                        // helperText: 'Helper text',
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFF000000),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFf17e4e), width: 2.0),
                        ),
                        // fillColor: Colors.white,
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xFFf17e4e), width: 2.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainBottomNavigator()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xff075e6d), // Background color
                        minimumSize: const Size.fromHeight(50),
                      ),
                      child: const Text('Sign in',
                          style: TextStyle(
                              fontSize: 16, color: Color(0xfffcf7f1))),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xff075e6d), fontSize: 16),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xfffcf7f1), // Background color
                          minimumSize: const Size.fromHeight(50),
                          side: const BorderSide(
                              width: 0.5, color: Color(0xff075e6d))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.circle_outlined,
                              size: 32,
                              color: Color(0xff075e6d),
                            ),
                            Text('Continue with Google',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff075e6d))),
                            SizedBox(width: 32),
                          ]),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xfffcf7f1), // Background color
                          minimumSize: const Size.fromHeight(50),
                          side: const BorderSide(
                              width: 0.5, color: Color(0xff075e6d))),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Icon(
                              Icons.facebook,
                              size: 32,
                              color: Color(0xff075e6d),
                            ),
                            Text('Continue with Facebook',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff075e6d))),
                            SizedBox(width: 32),
                          ]),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Or Signup",
                      style: TextStyle(color: Color(0xff075e6d), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
