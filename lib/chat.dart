import 'package:flutter/material.dart';
import './user.dart';
import './chatDescriptionPage.dart';

class Chat{
  String title;
  User owner = User("John Doe");

  Chat(this.title);

  void openChatDescription(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDescriptionPage(this)));
  }

  Container getAsList(context){
    return Container(
      height: 50,
      color: Colors.blue,
      child: ListTile(
        title: Text(title),

        onTap: (){
          openChatDescription(context);
        },
      ),
    );
  }
}