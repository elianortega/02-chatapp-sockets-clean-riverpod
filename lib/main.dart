import 'package:flutter/material.dart';

import 'package:chat_app/src/features/auth/auth.dart';

void main() => runApp(MyApp());

/// MyApp root widget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ChatApp',
      onGenerateRoute: (_) => LogInPage.route(),
      initialRoute: '/',
    );
  }
}
