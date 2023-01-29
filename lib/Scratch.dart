import 'package:flutter/material.dart';
import './chat.dart';
import './user.dart';
import './Message.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BigBird',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MsgPage(title: 'Change Bird Home Page'),
    );
  }
}

class MsgPage extends StatefulWidget {
  final String title;
  const MsgPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MsgPage> createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  Chat chats = Chat('Name');
  Message msg = Message('content');
  _MsgPageState(){
    msg.owner = chats.owner;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: chats.getAsList(context),
      ),
      backgroundColor: Colors.lightBlue[900],
      body: SafeArea(
        child: Column(
          children: [
            msg.getMessageBox(),
            Expanded(child: Container()),
            Container(
                color: Colors.white,
                child: TextField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                    ),
                    onSubmitted: (value) {
                      setState(() {
                        msg.contents = value;
                      });
                    }
                )
            )
              ]
        )
      ));
  }
}

