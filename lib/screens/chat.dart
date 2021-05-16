import 'package:bebe_time/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  List userChats = [];

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: appBarMain(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
              child: Column(children: [
            for (var chats in userChats) replyContainer(chats)
          ])),
          Row(
            children: <Widget>[
              Flexible(
                  child: TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter message'),
              )),
              IconButton(
                icon: const Icon(Icons.send),
                tooltip: 'Send',
                onPressed: () {
                  setState(() {
                    userChats.add(myController.text);
                  });
                },
              ),
            ],
          )
        ],
      ),
    );
    return scaffold;
  }
}
