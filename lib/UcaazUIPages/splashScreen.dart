import "package:flutter/material.dart";
import 'dart:async';

import 'package:hello/UcaazUIPages/registration.dart';

class UcaazMain extends StatefulWidget {
  const UcaazMain({super.key});

  @override
  _UcaazMainState createState() => _UcaazMainState();
}

class _UcaazMainState extends State<UcaazMain> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0.8, 0.6),
            colors: <Color>[
              Color(0xff075e6d),
              Color(0xff0f444d),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.clamp,
          ),
        ),
        child: const Image(image: AssetImage("assets/logo.png")));
    // child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Registration();
  }
}
