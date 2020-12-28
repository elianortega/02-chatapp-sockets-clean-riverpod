import 'package:chat_app/src/core/styles/styles.dart';
import 'package:flutter/material.dart';

///App logo image with app name
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.only(top: 60.0),
        width: 170,
        child: Column(
          children: [
            Image.asset(AppImages.kAppLogo),
            const SizedBox(height: 10.0),
            const Text(
              'ChatApp',
              style: AppTextStyles.kAppName,
            ),
          ],
        ),
      ),
    );
  }
}
