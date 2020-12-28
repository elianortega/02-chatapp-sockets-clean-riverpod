import 'package:flutter/material.dart';

///ChatPage
class ChatPage extends StatelessWidget {
  ///ChatPage constructor
  const ChatPage({Key key}) : super(key: key);

  ///Router for ChatPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const ChatPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
