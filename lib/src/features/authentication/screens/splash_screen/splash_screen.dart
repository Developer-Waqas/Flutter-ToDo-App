import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/features/authentication/controllers/splash_controller/splash_controller.dart';
import 'package:todo_app/src/features/authentication/screens/splash_screen/splash_screen_widget/splash_screen_header_widget.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {

    /* <<< --- GetX Dependency Injection --- >>> */
    SplashController controller = Get.put(SplashController());


    return Scaffold(
      backgroundColor: splashBgColor,
      body: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            /* <<< --- Splash Header Widget -- >>> */
            SplashScreenHeaderWidget(),
          ],
        ),
      ),
    );
  }
}
