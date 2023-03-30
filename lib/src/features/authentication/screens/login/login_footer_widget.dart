
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/features/authentication/screens/signup/sign_up_screen.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(image: AssetImage(tGoogleLogoImage),width: 20,),
              onPressed: (){},
              label: Text("Sign in with Google")),
        ),
        SizedBox(height: 10,),
        TextButton(onPressed: ()=> Get.to(SignupScreen()),
          child: Text.rich(TextSpan(
              text: tAlreadyhaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: tSignUp,
                  style: TextStyle(color: Colors.blue),
                )
              ]
          )),
        ),
      ],
    );
  }
}
