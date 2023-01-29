import 'package:flutter/material.dart';
import './chat.dart';
import './user.dart';
import './Message.dart';

class MsgPage extends StatefulWidget {
  final Chat chat;
  final User currentUser = User("Grant");
  MsgPage(this.chat, {super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MsgPage> createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.chat.getAsTitleBar(context),
      ),
      backgroundColor: Colors.lightBlue[900],
      body: SafeArea(
        child: Column(
          children: [
            Flexible(child:
            ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: widget.chat.messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return widget.chat.messages[index].getMessageBox();
                }),),
            Expanded(child: Container()),
            Container(
                color: Colors.white,
                child: TextField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        Message newMessage = Message(value, widget.currentUser);
                        widget.chat.addMessage(newMessage);
                        widget.chat.addMessage(newMessage.analyzeMessage());
                      });
                    }
                )
            )
              ]
        )
      ));
  }
}

