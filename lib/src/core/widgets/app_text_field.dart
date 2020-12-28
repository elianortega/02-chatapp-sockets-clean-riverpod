// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

import 'package:chat_app/src/core/styles/styles.dart';

/// Custom Text Field to be reused as any input field in the app
class AppTextField extends StatelessWidget {
  const AppTextField({
    Key key,
    @required this.placeHolder,
    @required this.controller,
    this.icon,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
  }) : super(key: key);

  final IconData icon;
  final String placeHolder;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
      decoration: BoxDecoration(
          color: AppColors.kTextFieldBackground,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              offset: const Offset(0, 5),
              blurRadius: 5,
            )
          ]),
      child: TextField(
        controller: controller,
        autocorrect: false,
        keyboardType: TextInputType.emailAddress,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: icon != null
              ? Icon(
                  icon,
                )
              : null,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
          hintText: placeHolder,
        ),
      ),
    );
  }
}
