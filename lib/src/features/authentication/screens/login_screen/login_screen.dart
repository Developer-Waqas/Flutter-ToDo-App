import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_textformfield/custom_tetformfield.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import '../../../../constants/app_colors/app_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBgColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: CustomIconButton(
                buttonIcon: CupertinoIcons.back,
                buttonPressed: () {
                  Get.off(WelcomeScreen(),curve: Curves.easeOut);
                },
                buttonColor: whiteColor,
                buttonSize: 35,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                loginButtonText1,
                style: loginTextStyle1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loginText2,
                    style: onBoardingSubTitleStyle,
                  ),
                  SizedBox(height: 8,),
                  CustomTextFormField(
                    inputTextStyle: onBoardingSubTitleStyle,
                    hintText: loginText3,
                    hintTextStyle: hintTextStyle,
                    inputBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: borderColor,
                        width: 2,
                      )
                    ),

                  ),
                  SizedBox(height: 10,),
                  Text(
                    loginText4,
                    style: onBoardingSubTitleStyle,
                  ),
                  SizedBox(height: 8,),
                  CustomTextFormField(
                    inputTextStyle: onBoardingSubTitleStyle,
                    hintText: loginText5,
                    hintTextStyle: hintTextStyle,
                    inputBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: borderColor,
                          width: 2,
                        )
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

