import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;

class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  getUser() async {
    var users = [];
    var response =
        await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
    var jsonData = jsonDecode(response.body);

    for (var i in jsonData) {
      UserModal user =
          UserModal(i['name'], i['username'], i["email"], i["company"]["name"]);
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUser(),
        builder: (context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null) {
            return Container(
              child: const Text("No Data Found"),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(snapshot.data[i].name),
                    subtitle: Text(snapshot.data[i].company),
                  );
                });
          }
        },
      ),
    );
  }
}

class UserModal {
  var name;
  var userName;
  var email;
  var company;

  UserModal(this.name, this.userName, this.email, this.company);
}
