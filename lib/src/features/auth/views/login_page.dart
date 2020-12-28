import 'package:chat_app/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:chat_app/src/core/styles/styles.dart';

///LogInPage
class LogInPage extends StatelessWidget {
  ///LogInPage constructor
  const LogInPage({Key key}) : super(key: key);

  ///Router for LogInPage
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const LogInPage());
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
                Logo(),
                _LoginForm(),
                _Labels(),
                _TermsAndConditions(),
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

class _Labels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Don't have an account?",
          style: AppTextStyles.kBlack15W300,
        ),
        const SizedBox(height: 10.0),
        const Text(
          'Create an account now!',
          style: AppTextStyles.kBlue18Bold,
        )
      ],
    );
  }
}

class _TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Terms and conditions.',
      style: AppTextStyles.kBlack14W200,
    );
  }
}
