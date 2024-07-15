import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/src/common_widgets/custom_button/custom_button.dart';
import 'package:todo_app/src/common_widgets/custom_icon_button/custom_icon_button.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/controllers/welcom_controller/welcome_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final welcomeController = WelcomeController();

    return Scaffold(
      backgroundColor: splashBgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CustomIconButton(
                  buttonIcon: CupertinoIcons.back,
                  buttonPressed: welcomeController.backBtn,
                  buttonColor: whiteColor,
                  buttonSize: 35),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    welcomeTitle,
                    style: welcomeTitleStyle,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    welcomeSubtitle,
                    style: onBoardingSubTitleStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 500,
            ),
            CustomButton(
              buttonWidth: 327,
              buttonHeight: 48,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonBorderRadius: 5,
              buttonColor: primaryColor,
              buttonTitle: loginBtnTitle,
              onPressed: welcomeController.loginBtn,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonWidth: 327,
              buttonHeight: 48,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonBorderRadius: 5,
              buttonTitle: createAccBtnTitle,
              onPressed: welcomeController.createAccountBtn,
              buttonBorder: Border.all(color: primaryColor, width: 2),
            ),
          ],
        ),
      ),
    );
  }
}
