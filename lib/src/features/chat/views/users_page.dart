import 'package:flutter/material.dart';

///UsersPage
class UsersPage extends StatelessWidget {
  ///UsersPage constructor
  const UsersPage({Key key}) : super(key: key);

  ///Router for UsersPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const UsersPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
