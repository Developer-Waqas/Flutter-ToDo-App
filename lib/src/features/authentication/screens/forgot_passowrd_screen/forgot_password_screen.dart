import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/features/authentication/screens/forgot_passowrd_screen/forgot_password_widgets/forgot_password_footer_widget.dart';
import 'package:todo_app/src/features/authentication/screens/login_screen/login_screen.dart';
import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import 'forgot_password_widgets/forgot_header_widget.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                const LoginScreen(),
              );
            },
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* Forgot Password header widget */
            ForgotPasswordHeaderWidget(),
            SizedBox(
              height: 5,
            ),

            /* <<< --  Form Widget --- >>> */
            ForgotPasswordHeaderWidget(),
            SizedBox(
              height: 50,
            ),

            /*  Footer widget */
            ForgotPasswordFooterWidget()
          ],
        ),
      ),
    );
  }
}
