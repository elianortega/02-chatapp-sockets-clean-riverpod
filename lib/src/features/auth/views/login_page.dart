import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:chat_app/src/core/styles/styles.dart';
import 'package:chat_app/src/core/widgets/widgets.dart';

import 'widgets/labels.dart';

///LogInPage
class LogInPage extends StatelessWidget {
  ///LogInPage constructor
  const LogInPage({Key key}) : super(key: key);

  ///Router for LogInPage
  static Route route() {
    return MaterialPageRoute<void>(
      builder: (_) => const LogInPage(),
      settings: const RouteSettings(
        name: routeName,
      ),
    );
  }

  ///Login Pager route name
  static const routeName = 'login-page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kScaffoldBackground,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .95,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Logo(
                  title: 'ChatApp',
                ),
                _LoginForm(),
                const Labels(
                  isLogIn: true,
                ),
                TermsAndConditions(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: [
          AppTextField(
            icon: Icons.mail_outline,
            placeHolder: 'Email',
            controller: emailController,
          ),
          AppTextField(
            icon: Icons.lock_outline,
            placeHolder: 'Password',
            controller: passwordController,
          ),
          const SizedBox(height: 20),
          AppStadiumButon(
            title: 'Log In',
            onPressed: () {
              print(emailController.text);
              print(passwordController.text);
            },
          ),
        ],
      ),
    );
  }
}
