import "package:flutter/material.dart";
import 'package:hello/chat/chatListWidget.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List data = [
    {
      "_id": "123213123",
      "name": "hasnain",
      "lastMessage": "Xyz...",
      "online": true,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213124",
      "name": "ammar",
      "lastMessage": "Xyz...",
      "online": false,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213125",
      "name": "syfiyan",
      "lastMessage": "Xyz...",
      "online": true,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213126",
      "name": "jhangeer",
      "lastMessage": "Xyz...",
      "online": false,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213127",
      "name": "basil",
      "lastMessage": "Xyz...",
      "online": true,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213128",
      "name": "babar",
      "lastMessage": "Xyz...",
      "online": false,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213129",
      "name": "salman",
      "lastMessage": "Xyz...",
      "online": true,
      "lastMessageTime": "4:25 PM"
    },
    {
      "_id": "123213130",
      "name": "hamza",
      "lastMessage": "Xyz...",
      "online": false,
      "lastMessageTime": "4:25 PM"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Chat List"),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index){
            return chatListTile(data[index]);
          } )
        );
  }
}
