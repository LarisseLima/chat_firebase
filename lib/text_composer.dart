import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  final Function({String text}) sendMessage;
  TextComposer(this.sendMessage);
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
  final TextEditingController _controller = TextEditingController();
  bool _isComposing = false;

  void _reset() {
    _controller.clear();
    setState(() {
      _isComposing = false;
    });

    @override
    Widget build(BuildContext context) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.photo_camera),
              onPressed: () async {},
            ),
            Expanded(
              child: TextField(
                controller: _controller,
                decoration:
                    InputDecoration.collapsed(hintText: 'Enviar uma Mensagem'),
                onChanged: (text) {
                  setState(() {
                    _isComposing = text.isNotEmpty;
                  });
                },
                onSubmitted: (text) {
                  widget.sendMessage(text: text);
                  _reset();
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: _isComposing
                  ? () {
                      widget.sendMessage(text: _controller.text);
                      _reset();
                    }
                  : null,
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
