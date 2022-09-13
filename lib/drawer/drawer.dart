import "package:flutter/material.dart";
import 'package:hello/counterForBasitStateManagement/counter.dart';

class DrawerUi extends StatefulWidget {
  const DrawerUi({super.key});

  @override
  State<DrawerUi> createState() => _DrawerUiState();
}

class _DrawerUiState extends State<DrawerUi> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text("Drawer")),
        drawer: Drawer(
          child: ListView(children: [
            DrawerHeader(
                child: Container(
              color: Colors.yellow,
              child: Text("Drawer Heading"),
            )),
            GestureDetector(
              onTap: () {
                print("done");
              },
              child: ListTile(
                title: Text("Drawer list"),
              ),
            ),
            // ListBody(
            //   children: [
            //     Text("1) asdasdsadas"),
            //     Text("2) asda34sdsadas"),
            //     Text("3) asadas"),
            //     Text("4) a41412312sdasdsadas"),
            //     Text("5) asdasdas"),
            //   ],
            // )
          ]),
        ),
      ),
    );
  }
}

// Widget Login() {
//   return Container(
//     child: Center(child: Text("Login")),
//   );
// }

// Widget Register() {
//   return Container(
//     child: Center(child: Text("Login")),
//   );
// }
