import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:todo_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

import '../../../../common_widgets/custom_onboarding_container/custom_onboarding_container.dart';
import '../../../../constants/app_colors/app_colors.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../constants/text_strings/text_strings.dart';

class OnBoardingController extends GetxController {

  /* <<< ---- Page Controller --- >>>> */
  final controller = LiquidController();

  /* current page variable */
  RxInt currentPage = 0.obs;

  /* For Last Page --- to change buttons */
  bool get isLastPage => currentPage.value == onBoardingPages.length - 1;


  /* <<< --- Page Change Func --- >>>>*/
  onPageChangeCallback(int activePageIndex) {
    return currentPage.value = activePageIndex;
  }

  /* Skip Func */
  skip() => controller.jumpToPage(page: 2);

  /* <<< --- Next Button Func --- >>> */
  animatedToNextSlide() {
    if (isLastPage) {
      Get.off(
        const WelcomeScreen(),
        duration: 1.seconds,
      );
    }
    else {
      int nextPage = controller.currentPage + 1;
      controller.animateToPage(
        duration: 1,
        page: nextPage,
      );
    }
  }


  /* Back Button Func */
  animatedToBackSlide() {
    int backPage = controller.currentPage - 1 ;
    controller.animateToPage(page: backPage);
  }

  /* <<<< --- OnBoarding Pages List --- >>>> */
  final onBoardingPages = [
    CustomOnBoardingContainer(
      bgColor: onBoardingColor1,
      onBoardingImage: const AssetImage(onBoardingImage1),
      title: onBoardingTitleText1,
      subtitle: onBoardingSubtitleText2,
    ),
    CustomOnBoardingContainer(
      bgColor: onBoardingColor2,
      onBoardingImage: const AssetImage(onBoardingImage2),
      title: onBoardingTitleText2,
      subtitle: onBoardingSubTitle2,
    ),
    CustomOnBoardingContainer(
      bgColor: onBoardingColor3,
      onBoardingImage: const AssetImage(onBoardingImage3),
      title: onBoardingTitleText3,
      subtitle: onBoardingSubTitleText3,
    ),
  ];
}
