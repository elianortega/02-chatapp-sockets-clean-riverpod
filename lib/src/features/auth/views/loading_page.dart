import 'package:flutter/material.dart';

///LoadingPage
class LoadingPage extends StatelessWidget {
  ///Consturctor for LoadingPag
  const LoadingPage({Key key}) : super(key: key);

  ///Route for LoadingPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LoadingPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
