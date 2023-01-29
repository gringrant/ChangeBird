import 'package:flutter/material.dart';
import './user.dart';

class Message{
  String contents;
  User owner = User("John Doe");

  Message(this.contents);

  Container getMessageBox(){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 2
          ),
          borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(10),
          child: Text(contents),
    );
  }
}