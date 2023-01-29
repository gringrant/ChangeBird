import 'package:flutter/material.dart';
import './user.dart';

class Message{
  String contents;
  User owner = User("John Doe");

  Message(this.contents);

  Container getMessageBox(){
    return Container(
      color: Colors.blue,
          child: Text(contents),
    );
  }
}