import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/image_strings/image_strings.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/controllers/splash_controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});



  @override
  Widget build(BuildContext context) {

    SplashController controller = Get.put(SplashController());

    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: splashBgColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(splashImage),
              height: size.height * 0.1
            ),
            SizedBox(height: 10,),
            Text(appName,style: logoTextStyle,),
          ],
        ),
      ),
    );
  }
}
