import 'package:flutter/material.dart';
import './user.dart';
import './ActivitiesList.dart';

class Message{
  String contents;
  User owner = User("John Doe");

  Message(this.contents, this.owner);

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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Text(owner.name,
                  textAlign: TextAlign.right),
              Text(contents,
                  textAlign: TextAlign.right),
            ]
          ) //TextAlign.left for guest
    );
  }

  Message? analyzeMessage(){
    List<String> words = contents.split(' ');
    for(int i = 0; i < words.length; i++) {
      if (map.containsKey(words[i])) {
        return map[words[i]];
      }
    }

    return null;
  }
}