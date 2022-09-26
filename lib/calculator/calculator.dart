import "package:flutter/material.dart";
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorSetup extends StatefulWidget {
  const CalculatorSetup({super.key});

  @override
  State<CalculatorSetup> createState() => _CalculatorSetupState();
}

class _CalculatorSetupState extends State<CalculatorSetup> {
  var result = "";

  performCalculation() {
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });
  }

  Widget btn(var textt) {
    return ElevatedButton(
        onPressed: () {
          if (textt == "clear") {
            setState(() {
              result = "";
            });
          } else if (textt == "=") {
            performCalculation();
          } else {
            setState(() {
              result = result + textt;
            });
          }
        },
        child: Text(textt));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          result,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [btn("1"), btn("2"), btn("3"), btn("+")]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [btn("4"), btn("5"), btn("6"), btn("-")]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [btn("7"), btn("8"), btn("9"), btn("*")]),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [btn("clear"), btn("0"), btn("="), btn("/")]),
      ]),
    );
  }
}
