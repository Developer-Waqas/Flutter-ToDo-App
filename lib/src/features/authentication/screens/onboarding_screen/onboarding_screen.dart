import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';

import '../../../../common_widgets/custom_button/custom_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final onBoardingController = OnBoardingController();

    return Scaffold(
      backgroundColor: splashBgColor,
      body: Stack(
        alignment: Alignment.center,
        children: [

          LiquidSwipe(
            pages: onBoardingController.onBoardingPages,
            liquidController: onBoardingController.controller,
            onPageChangeCallback: onBoardingController.onPageChangeCallback,
          ),
          const SizedBox(
            height: 50,
          ),
          Obx(
                () => Positioned(
              bottom: 30,
              child: AnimatedSmoothIndicator(
                activeIndex: onBoardingController.currentPage.value,
                count: onBoardingController.onBoardingPages.length,
                effect: WormEffect(activeDotColor: whiteColor, dotHeight: 5),
              ),
            ),
          ),

          ///Skip button
          Positioned(
            top: 30,
            left: 10,
            child: CustomButton(
              buttonTitle: onBoardingButtonText1,
              onPressed: () => onBoardingController.skip(),
              buttonTextStyle: onBoardingBackButtonTextStyle,
            ),
          ),
          Positioned(
            bottom: 80,
            right: 20,
            child: Obx(
                  () => CustomButton(
                buttonHeight: 48,
                buttonWidth: 140,
                buttonTitle: onBoardingController.isLastPage
                    ? onBoardingButtonText4
                    : onBoardingButtonText2,
                onPressed: () => onBoardingController.animatedToNextSlide(),
                buttonColor: primaryColor,
                buttonBorderRadius: 8,
                buttonTextStyle: onBoardingSubTitleStyle,
              ),
            ),
          ),
          Positioned(
            bottom: 80,
            left: 20,
            child: CustomButton(
              buttonTitle: onBoardingButtonText3,
              onPressed: () => onBoardingController.animatedToBackSlide(),
              buttonTextStyle: onBoardingBackButtonTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}


