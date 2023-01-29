import 'package:flutter/material.dart';
import './chat.dart';

class ChatDescriptionPage extends StatelessWidget {

  final Chat chat;
  const ChatDescriptionPage(this.chat, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chat.title),
      ),
      body: Column(
          children: <Widget>[
            Text('Name: ${chat.title}',
                style:const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    height: 2,
                )
            ),
            Text('Owner: ${chat.owner.name}',
              style:const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
                height: 3,
              )
            ),
            const Text('Hangouts: Meijer',
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              height: 3,
            ),
        )
              ]
      ));
    }
}