import 'package:flutter/material.dart';
import './user.dart';
import './chatDescriptionPage.dart';

class Chat{
  String title;
  User owner = User("John Doe");

  Chat(this.title);

  Container getAsList(context){
    return Container(
      height: 50,
      color: Colors.amber[600],
      child: ListTile(
        title: Text(title),
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatDescriptionPage()));
        },
      ),
    );
  }
}