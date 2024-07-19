import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/controllers/signup_controller/signup_controller.dart';
import 'package:todo_app/src/features/authentication/screens/signup_screen/signup_screen_widgets/signup_screen_footer_widget.dart';

import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import '../../../../constants/app_colors/app_colors.dart';
import '../welcome_screen/welcome_screen.dart';
import 'signup_screen_widgets/signup_header_widget.dart';
import 'signup_screen_widgets/signup_screen_form_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final SignUpController signUpController = Get.put(SignUpController());

    return Scaffold(
      backgroundColor: splashBgColor,
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
            buttonIcon: CupertinoIcons.back,
            buttonPressed: () {
              Get.off(
                const WelcomeScreen(),
              );
            },
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* SignUp Header Widget */
              const SignUpHeaderWidget(),
              const SizedBox(height: 30),

              /*  SignUp Form */
              SignUpForm(signUpController: signUpController,),

              /* SignUp Footer Widget */
              const SignUpFooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
