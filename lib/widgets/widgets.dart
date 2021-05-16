import 'package:flutter/material.dart';

Widget appBarMain() {
  return AppBar(
    title: Text('Bebe Time'),
  );
}

Widget replyContainer(userChat) {
  return Container(
    padding: EdgeInsets.all(18.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.brown.shade300,
    ),
    child: Column(children: [
      Text(
        'You: ' + userChat,
        style: TextStyle(color: Colors.white),
      ),
    ]),
  );
}
