import 'package:chat_app/src/core/styles/styles.dart';
// ignore_for_file: public_member_api_docs
import 'package:flutter/material.dart';

///Raised button with Stadium Shape
class AppStadiumButon extends StatelessWidget {
  const AppStadiumButon({
    Key key,
    @required this.onPressed,
    @required this.title,
    this.backgroundColor,
  }) : super(key: key);

  final Color backgroundColor;
  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 2,
      highlightElevation: 5,
      color: backgroundColor ?? AppColors.kPrimaryColor,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Container(
        height: 45,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.kWhite17,
          ),
        ),
      ),
    );
  }
}
