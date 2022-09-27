import 'package:flutter/material.dart';

Widget chatListTile(var listItems) {

  // print(listItems);
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage("assets/avatar.jpeg"),
      radius: 25,
    ),
    title: Text("Hasnain"),
    subtitle: Text("Hey..!"),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("4:25 PM"),
        CircleAvatar(
          backgroundColor: Colors.green,
          radius: 5,
        ),
      ],
    ),
  );
}
