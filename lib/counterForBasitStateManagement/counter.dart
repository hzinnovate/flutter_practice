import "package:flutter/material.dart";

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  var num = 0;

  add(param) {
    if (param != 0) {
      setState(() {
        num = param == "+" ? num + 1 : num - 1;
      });
    } else {
      setState(() {
        num = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Counter : $num"),
              ElevatedButton(
                child: Text("Add"),
                onPressed: () => {add("+")},
              ),
              ElevatedButton(
                child: Text("Substract"),
                onPressed: () => {add("-")},
              ),
              ElevatedButton(
                child: Text("Clear"),
                onPressed: () => {add(0)},
              ),
            ],
          ),
        ));
  }
}
