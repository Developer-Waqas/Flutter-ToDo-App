import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../common_widgets/custom_onboarding_container/custom_onboarding_container.dart';
import '../../../../constants/app_colors/app_colors.dart';
import '../../../../constants/image_strings/image_strings.dart';
import '../../../../constants/text_strings/text_strings.dart';

class OnBoardingController extends GetxController {

  final controller = LiquidController();
  RxInt currentPage = 0.obs;


  final pages = [
    CustomOnBoardingContainer(
      bgColor: onBoardingColor1,
      onBoardingImage: const AssetImage(onBoardingImage1),
      title: title1,
      subtitle: subTitle1,
    ),
    CustomOnBoardingContainer(
      bgColor: onBoardingColor2,
      onBoardingImage: const AssetImage(onBoardingImage2),
      title: title2,
      subtitle: subTitle2,
    ),
    CustomOnBoardingContainer(
      bgColor: onBoardingColor3,
      onBoardingImage: const AssetImage(onBoardingImage3),
      title: title3,
      subtitle: subTitle3,
    ),
  ];

  onPageChangeCallback(int activePageIndex)=> currentPage.value = activePageIndex;
  skip() => controller.jumpToPage(page: 2);
  animatedToNextSlide(){
    int nextPage = controller.currentPage + 1 ;
    controller.animateToPage(page: nextPage);
  }
  animatedToBackSlide(){
    int backPage = controller.currentPage - 1 ;
    controller.animateToPage(page: backPage);
  }

}