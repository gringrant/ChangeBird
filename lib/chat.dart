import 'package:flutter/material.dart';
import './user.dart';

class Chat{
  String title;
  User owner = User();

  Chat(this.title);

  Container getAsList(){
    return Container(
      height: 50,
      color: Colors.amber[600],
      child: Center(child: Text(title)),
    );
  }
}