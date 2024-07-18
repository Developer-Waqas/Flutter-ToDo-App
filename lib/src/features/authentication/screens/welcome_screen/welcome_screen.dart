import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
              buttonIcon: CupertinoIcons.back,
              buttonPressed: welcomeController.backBtn,
              buttonColor: whiteColor,
              buttonSize: 35),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [

            /* <<< --- Heading --- >>> */
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    welcomeTitle,
                    style: welcomeTitleStyle,
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  /* << -- Sub Heading --- >>> */
                  Text(
                    welcomeSubtitle,
                    style: onBoardingSubTitleStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 400,
            ),

            /* Login Button */
            CustomButton(
              buttonWidth: 327,
              buttonHeight: 48,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonBorderRadius: 5,
              buttonColor: primaryColor,
              buttonTitle: loginBtnTitle,
              onPressed: welcomeController.loginBtn,
            ),
            const SizedBox(
              height: 20,
            ),

            /* Create Account Button */
            CustomButton(
              buttonWidth: 327,
              buttonHeight: 48,
              buttonTextStyle: onBoardingSubTitleStyle,
              buttonBorderRadius: 5,
              buttonTitle: createAccBtnTitle,
              onPressed: welcomeController.signUpBtn,
              buttonBorder: Border.all(color: primaryColor, width: 2,),
            ),
          ],
        ),
      ),
    );
  }
}
