// import material.dart for material app
import 'package:flutter/material.dart';

import 'package:bebe_time/screens/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bebe Time',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: ChatScreen());
  }
}
