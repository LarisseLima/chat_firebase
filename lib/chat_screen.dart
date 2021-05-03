import 'dart:io';
import 'package:chat/text_composer.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void _sendMessage({String text, File imgFile}) async {
    if (imgFile != null) {
      StorageUploadTask task = FirebaseStorage.instance
          .ref()
          .child(user.uid + DateTime.now().millisecondsSinceEpoch.toString())
          .putFile(imgFile);
    }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Hi'),
          elevation: 0,
        ),
        body: TextComposer(_sendMessage),
      );
    }
  }
}
