import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_button/custom_button.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CustomIconButton(
                  buttonIcon: CupertinoIcons.back,
                  buttonPressed: () {
                    Get.off(const WelcomeScreen(), curve: Curves.easeOut);
                  },
                  buttonColor: whiteColor,
                  buttonSize: 35,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  loginButtonText1,
                  style: loginTextStyle1,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        loginText2,
                        style: onBoardingSubTitleStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
        
                      ///Username
                      CustomTextFormField(
                        keyboardType: TextInputType.text,
                        inputTextStyle: onBoardingSubTitleStyle,
                        hintText: loginText3,
                        hintTextStyle: hintTextStyle,
                        inputBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: borderColor,
                              width: 2,
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        loginText4,
                        style: onBoardingSubTitleStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
        
                      ///Password
                      CustomTextFormField(
                        keyboardType: TextInputType.text,
                        inputTextStyle: onBoardingSubTitleStyle,
                        hintText: loginText5,
                        hintTextStyle: hintTextStyle,
                        inputBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: borderColor,
                              width: 2,
                            )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: CustomButton(
                          buttonColor: primaryColor,
                          buttonBorderRadius: 5,
                          buttonTextStyle: onBoardingSubTitleStyle,
                          buttonWidth: 327,
                          buttonTitle: loginButtonText1,
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                loginText6,
                                style: hintTextStyle,
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                thickness: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
        
                      ///Google
                      Center(
                        child: CustomButton(
                          buttonBorderRadius: 5,
                          buttonTextStyle: onBoardingSubTitleStyle,
                          buttonWidth: 327,
                          buttonTitle: loginButtonText2,
                          buttonBorder: Border.all(color: primaryColor),
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
        
                      ///Apple
                      Center(
                        child: CustomButton(
                          buttonBorderRadius: 5,
                          buttonTextStyle: onBoardingSubTitleStyle,
                          buttonWidth: 327,
                          buttonTitle: loginButtonText3,
                          buttonBorder: Border.all(color: primaryColor),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(loginText7,style: hintTextStyle,),
                  CustomButton(
                    buttonTitle: loginButtonText4,buttonTextStyle: onBoardingSubTitleStyle,
                    buttonWidth: 148,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
