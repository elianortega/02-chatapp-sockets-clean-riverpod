import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:chat_app/src/core/styles/styles.dart';
import 'package:chat_app/src/core/widgets/widgets.dart';

import 'widgets/labels.dart';

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
                  title: 'Register',
                ),
                _RegisterForm(),
                const Labels(
                  isLogIn: false,
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

class _RegisterForm extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      child: Column(
        children: [
          AppTextField(
            icon: Icons.perm_identity,
            placeHolder: 'Name',
            controller: nameController,
          ),
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
            title: 'Register',
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
