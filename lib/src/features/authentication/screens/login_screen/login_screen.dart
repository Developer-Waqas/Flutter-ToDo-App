import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/features/authentication/controllers/login_controller/login_controller.dart';
import 'package:todo_app/src/features/authentication/screens/login_screen/login_widgets/login_header_widget.dart';
import 'package:todo_app/src/features/authentication/screens/login_screen/login_widgets/login_footer_widgets.dart';

import '../../../../common_widgets/custom_icon_button/custom_icon_button.dart';
import '../../../../constants/app_colors/app_colors.dart';
import 'login_widgets/login_form_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /*  <<< --- GetX Dependency Injection ---- >>>> */

    return Scaffold(
      backgroundColor: splashBgColor,
      appBar: AppBar(
        backgroundColor: transparent,
        elevation: 0,
        leading: Align(
          alignment: Alignment.topLeft,
          child: CustomIconButton(
            buttonIcon: CupertinoIcons.back,
            buttonPressed: (){},
            buttonColor: whiteColor,
            buttonSize: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* Login Header Widget */
              const LoginHeaderWidget(),
              const SizedBox(
                height: 8,
              ),

              /* LoginFOrm */
              LoginForm(
              ),
              const SizedBox(
                height: 10,
              ),

              /* Login Screen Footer Widget */
              const LoginFooterWidget(),

            ],
          ),
        ),
      ),
    );
  }
}
