import 'package:chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // Color(0xDD1dd3b0),
          iconTheme: IconThemeData(
            color: Color(0xDD1dd3b0),
          )),
      home: ChatScreen(),
    );
  }
}
