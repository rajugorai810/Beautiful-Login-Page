import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/common_widgets/form/form_header_widget.dart';
//import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
// import 'package:loginpage/src/features/authentication/screens/login/login_footer_widget.dart';
// import 'package:loginpage/src/features/authentication/screens/login/login_form_widget.dart';
// import 'package:loginpage/src/features/authentication/screens/login/login_header_widget.dart';
import 'package:loginpage/src/features/authentication/screens/login/login_screen.dart';
import 'package:loginpage/src/features/authentication/screens/signup/signup_form_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize-10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                FormHeaderWidget(image: welcomeScreenImage,
                    title: tSignupTitle,
                    subtitle: tSignupsubTitle,
                ),

                signupFormWidget(),

                Column(
                  children: [
                    Text("OR", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: tFormHeight,),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(onPressed: (){},
                      icon: Image(image: AssetImage(tGoogleLogoImage), width: 20.0,),
                        label: Text("Sign in with Google"),
                      ),
                    ),

                    TextButton(onPressed: () => Get.to(LoginScreen()),
                        child: Text.rich(TextSpan(
                          children: [
                            TextSpan(text: tAlredyAccount, style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(text: tLogin.toUpperCase()),
                          ]
                        )))
                  ],
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}

