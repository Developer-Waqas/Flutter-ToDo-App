import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/src/constants/app_colors/app_colors.dart';
import 'package:todo_app/src/constants/app_styles/app_style.dart';
import 'package:todo_app/src/constants/image_strings/image_strings.dart';
import 'package:todo_app/src/constants/text_strings/text_strings.dart';
import 'package:todo_app/src/features/authentication/controllers/onboarding_controller/onboarding_controller.dart';

import '../../../../common_widgets/custom_button/custom_button.dart';
import '../../../../common_widgets/custom_onboarding_container/custom_onboarding_container.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final onBoardingController = OnBoardingController();

    return Scaffold(
      backgroundColor: splashBgColor,
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: onBoardingController.pages,
            liquidController: onBoardingController.controller,
            onPageChangeCallback: onBoardingController.onPageChangeCallback,
          ),
          SizedBox(
            height: 50,
          ),
          Obx(() => Positioned(
            bottom: 30,
            child: AnimatedSmoothIndicator(
              activeIndex: onBoardingController.currentPage.value,
              count: 3,
              effect: WormEffect(activeDotColor: whiteColor, dotHeight: 5),
            ),
          ),),

          ///Skip button
          Positioned(
            top: 30,
            left: 10,
            child: CustomButton(
              buttonTitle: onBoardingButtonText1,
              onPressed: () => onBoardingController.skip(),
              buttonTextStyle: onBoardingBackButtonTextStyle,
            ),),
          ///Next button
          Positioned(
            bottom: 80,
              right: 20,
              child: CustomButton(
                buttonHeight: 48,
                buttonWidth: 90,
                buttonTitle: onBoardingButtonText2,
                onPressed: () => onBoardingController.animatedToNextSlide(),
                buttonColor: nextButtonColor,
                buttonBorderRadius: 10,
                buttonTextStyle: onBoardingSubTitleStyle,
              ),),
          Positioned(
            bottom: 80,
            left: 20,
            child: CustomButton(
              buttonTitle: onBoardingButtonText3,
              onPressed: () => onBoardingController.animatedToBackSlide(),
              buttonTextStyle: onBoardingBackButtonTextStyle,
            ),),
        ],
      ),
    );
  }
}
