

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/splash_screen_controller.dart';

import '../../../../common_widgets/fade_in_animation/animation.dart';
import '../welcome/welcome.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
   controller.startSplashAnimation();
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            tFadeinAnimation(durationInMs: 1600,
                animate: TAnimatePosition(
                  topAfter: 0, topBefore: -30,
                  leftBefore: -30, leftAfter: 0,
                  
                ), child: const Image(image: AssetImage(tSplashIcon)),
                 ),

           // tFadeinAnimation(splashController: splashController),
            tFadeinAnimation(
              durationInMs: 2000,
              animate: TAnimatePosition(
                topBefore: 80, topAfter: 80, leftAfter: tDefaultSize, leftBefore: -80,),
              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 30,),
                              Text(tAppName, style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyLarge,),
                              Text(tApptagline, style: Theme
                                  .of(context)
                                  .textTheme
                                  .titleLarge,),
                            ],
                          ),
                        ),


          tFadeinAnimation(durationInMs: 2400,
              animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
              child: const Image(image: AssetImage(tSplashImage))),

           tFadeinAnimation(durationInMs: 2400,
                      animate: TAnimatePosition(
                        bottomBefore: 0, bottomAfter: 60,
                        rightBefore: tDefaultSize, rightAfter: tDefaultSize,
                      ),
                      child: Container(
                        width: tSplashContainerSize,
                        height: tSplashContainerSize,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,

                        ),

                      )
                  ),

          ],
        ),
      ),
    );
  }
}



