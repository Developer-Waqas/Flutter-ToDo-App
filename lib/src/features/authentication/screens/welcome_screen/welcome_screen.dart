import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/common_widgets/custom_icon_button/custom_icon_button.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/features/authentication/controllers/welcom_controller/welcome_controller.dart';
import 'package:todo_app/src/features/authentication/screens/welcome_screen/welcome_screen_widgets/welcome_screen_footer_widget.dart';

import 'welcome_screen_widgets/welcome_screen_header_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final WelcomeController welcomeController = Get.put(WelcomeController());

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
            const WelcomeScreenHeaderWidget(),
            const SizedBox(
              height: 400,
            ),

            /* Welcome Screen Footer Widget */
            WelcomeScreenFooterWidget(welcomeController: welcomeController,),
          ],
        ),
      ),
    );
  }
}
