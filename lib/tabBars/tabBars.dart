import "package:flutter/material.dart";

class TabBars extends StatefulWidget {
  const TabBars({super.key});

  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBars"),
          bottom: TabBar(tabs: [
            Tab(
              child: Text("Login"),
            ),
            Tab(
              child: Text("Register"),
            ),
          ]),
        ),
        body: TabBarView(children: [Login(), Register()]),
      ),
    );
  }
}

Widget Login() {
  return Container(
    child: Center(child: Text("Login")),
  );
}

Widget Register() {
  return Container(
    child: Center(child: Text("Login")),
  );
}
