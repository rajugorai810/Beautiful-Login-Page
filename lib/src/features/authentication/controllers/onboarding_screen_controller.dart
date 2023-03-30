import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/onboarding_model.dart';
import '../screens/onboarding_screen/onboarding_page_widget.dart';

class onBoardingController extends GetxController{
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    onBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSuntitle1,
        counterText: tOnBoardingCounter1,
       // height: size.height,
        bgColor: tOnBoardingPage1Color,
      ),
    ),

    onBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSuntitle2,
        counterText: tOnBoardingCounter2,
       // height: size.height,
        bgColor: tOnBoardingPage2Color,
      ),
    ),

    onBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSuntitle3,
        counterText: tOnBoardingCOunter3,
      //  height: size.height,
        bgColor: tOnBoardingPage3Color,

      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;
  //skip() => controller.jumpToPage(page: 2);

  animateToNextSlide(){
    int nextPage = controller.currentPage +1;
    controller.animateToPage(page: nextPage);
  }

}