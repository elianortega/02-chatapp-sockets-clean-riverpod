import 'package:flutter/material.dart';

///RegisterPage
class RegisterPage extends StatelessWidget {
  ///RegisterPage constructor
  const RegisterPage({Key key}) : super(key: key);

  ///Router for RegisterPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const RegisterPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
