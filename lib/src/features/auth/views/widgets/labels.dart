// ignore_for_file: public_member_api_docs
import 'package:chat_app/src/core/styles/styles.dart';
import 'package:chat_app/src/features/auth/auth.dart';
import 'package:flutter/material.dart';

/// Login and Register labels to navigate bewtween screens
class Labels extends StatelessWidget {
  const Labels({
    Key key,
    this.isLogIn,
  }) : super(key: key);

  final bool isLogIn;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          isLogIn ? "Don't have an account?" : 'Already have an account?',
          style: AppTextStyles.kBlack15W300,
        ),
        const SizedBox(height: 10.0),
        GestureDetector(
          child: Text(
            isLogIn ? 'Create an account now!' : 'Log In into your account!',
            style: AppTextStyles.kBlue18Bold,
          ),
          onTap: () => isLogIn
              ? Navigator.push(context, RegisterPage.route())
              : Navigator.popUntil(
                  context,
                  ModalRoute.withName(LogInPage.routeName),
                ),
        )
      ],
    );
  }
}
