import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/models/onboarding_model.dart';
import 'package:loginpage/src/features/authentication/screens/welcome/welcome.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/onboarding_screen_controller.dart';
import 'onboarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

final obcontroller  = onBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(pages: obcontroller.pages,
          enableSideReveal : true,
          liquidController: obcontroller.controller,
          onPageChangeCallback: obcontroller.onPageChangedCallback,
          slideIconWidget: Icon(Icons.arrow_back_ios),

          ),

          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                onPressed: () => obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  onPrimary: Colors.white,
                ), child: Container(
               padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: Color(0xff272727), shape: BoxShape.circle
                ),
                child: Icon(Icons.arrow_forward_ios),
              ),
              )
          ),

          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
            onPressed: () => Get.to(WelcomeScreen()),
            child: const Text("Skip", style: TextStyle(color: Colors.grey),),
          )),

          Obx(
              ()=> Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
              activeIndex: obcontroller.currentPage.value,
              count: 3,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 5.0,
                  ),
            )),
          ),
        ],
      ),
    );
  }


}

