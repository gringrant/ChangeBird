import 'package:flutter/material.dart';
import './user.dart';
import './chatDescriptionPage.dart';
import './Message.dart';

class Chat{
  String title;
  User owner = User("John Doe");
  List<User> participants = [];
  List<Message> messages = [];

  Chat(this.title);

  void openChatDescription(context){
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDescriptionPage(this)));
  }

  Container getAsList(context){
    return Container(
      height: 50,
      color: Colors.blue,
      child: ListTile(
        title: Text(title,
          style:const TextStyle(
            color: Colors.white
          ) ),

        onTap: (){
          openChatDescription(context);
        },
      ),
    );
  }
}