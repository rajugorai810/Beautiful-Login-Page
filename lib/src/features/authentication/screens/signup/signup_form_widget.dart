import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/features/authentication/controllers/sign_up_controller.dart';
import 'package:loginpage/src/features/authentication/models/user_model.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/OTP/OTP_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class signupFormWidget extends StatelessWidget {
  const signupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formkey = GlobalKey<FormState>();
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: InputDecoration(
                  label: Text("Full Name"),
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: tSecondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  )),
            ),
            SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.email,
              decoration: InputDecoration(
                  label: Text("E-mail"),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: tSecondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  )),
            ),
            SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: InputDecoration(
                  label: Text("Phone Number"),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: tSecondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  )),
            ),
            SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              controller: controller.password,
              decoration: InputDecoration(
                  label: Text("Password"),
                  prefixIcon: Icon(
                    Icons.fingerprint_outlined,
                    color: tSecondaryColor,
                  ),
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(color: tSecondaryColor),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2.0, color: tSecondaryColor),
                  )),
            ),
            SizedBox(
              height: tFormHeight + 10,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        // for email Authentication
                        // SignUpController.instance.registerUser(
                        //     controller.email.text.trim(),
                        //     controller.password.text.trim());
                        
                        //For Phone Authentication
                        // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());
                        // Get.to(()=>OTPScreen());
                        
                        final user = UserModel(email: controller.email.text.trim(),
                            password: controller.password.text.trim(),
                            phoneNo: controller.phoneNo.text.trim(),
                            fullName: controller.fullName.text.trim());
                        SignUpController.instance.createUser(user);
                      }
                    },
                    child: Text(tSignUp.toUpperCase()))),
          ],
        ),
      ),
    );
  }
}
