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
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}