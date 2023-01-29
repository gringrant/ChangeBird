import 'package:flutter/material.dart';
import './user.dart';

class Message{
  String contents;
  User owner = User("John Doe");

  Message(this.contents, this.owner);

  Container getMessageBox(){

    return Container();
  }
}