import 'package:flutter/material.dart';
import 'package:impty_project/ui/shared/colors.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_button.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text.dart';
import 'package:impty_project/ui/shared/custom_widgets/custom_text_field.dart';
import 'package:impty_project/ui/shared/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: screenWidth(10), horizontal: screenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CustomText(
                  text: 'تسجيل الدخول',
                  textColor: AppColors.mainTextsColor,
                  textsize: screenWidth(18)),
            ),
            CustomText(
                text: 'اسم المستخدم',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(20)),
            CustomTextField(
              hintext: 'اسم المستخدم',
              prifexIcon: Icons.person_outline,
            ),
            CustomText(
                text: 'اسم المستخدم',
                textColor: AppColors.mainPurpleColor,
                textsize: screenWidth(20)),
            CustomTextField(
              hintext: 'اسم المستخدم',
              prifexIcon: Icons.person_outline,
            ),
            CustomButton(text: 'تسجيل الدخول'),
          ],
        ),
      ),
    );
  }
}
