import "package:flutter/material.dart";
import 'package:hello/calculator/calculator.dart';
import 'package:hello/chat/chat.dart';
import 'package:hello/counterForBasitStateManagement/counter.dart';
import 'package:hello/drawer/drawer.dart';
import 'package:hello/tabBars/tabBars.dart';
import 'package:hello/todoApp/todoApp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home Page"),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text("Chat Ui"),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
              ),
              ElevatedButton(
                child: Text("TabBars"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TabBars()));
                },
              ),
              ElevatedButton(
                child: Text("DrawerUi"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DrawerUi()));
                },
              ),
              ElevatedButton(
                child: Text("Counter Basit State"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Counter()));
                },
              ),
              ElevatedButton(
                child: Text("Calculator"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CalculatorSetup()));
                },
              ),
              ElevatedButton(
                child: Text("Todo App"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TodoApp()));
                },
              ),
            ],
          ),
        ));
  }
}
