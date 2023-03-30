import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/animation.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:loginpage/src/common_widgets/fade_in_animation/splash_screen_controller.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/screens/login/login_screen.dart';
import 'package:loginpage/src/features/authentication/screens/signup/sign_up_screen.dart';

import '../../../../constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var height = MediaQuery.of(context).size.height;
    // var mediaQuery = MediaQuery.of(context);
    // var brightness = mediaQuery.platformBrightness;
    // final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
      //backgroundColor: isDarkMode ? tPrimaryColor : tSecondaryColor,
      body: Stack(
        children: [
          tFadeinAnimation(
            durationInMs: 1200,
            animate: TAnimatePosition(
              bottomAfter: 0, bottomBefore: -100,
              leftBefore: 0, leftAfter: 0, topAfter: 0,topBefore: 0, rightAfter: 0,rightBefore: 0,
            ),
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                    image: AssetImage(welcomeScreenImage),
                    height: height * 0.5,
                  ),
                  Column(
                    children: [
                      Text(
                        tWelcometitle,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                      Text(
                        tWelcomeSubtitle,
                        style: Theme.of(context).textTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(LoginScreen()),

                              child: Text(tLogin.toUpperCase()))),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () => Get.to(SignupScreen()),

                              child: Text(tSignUp.toUpperCase()))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
