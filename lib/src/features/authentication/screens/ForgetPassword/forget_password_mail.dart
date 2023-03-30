
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/common_widgets/form/form_header_widget.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/OTP/OTP_screen.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              children: [
                SizedBox(height: tDefaultSize*4,),
                FormHeaderWidget(
                    image: tForgetPassImage,
                    title: "Forget Password",
                    subtitle: tForgetPasssubTitle,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    heightBetween: 20,
                    //crossAxisAlignment : CrossAxisAlignment.center,

                ),
                SizedBox(height: tFormHeight+10,),
                Form(child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        label: Text("E-Mail"),
                        hintText: "e-mail",
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          Get.to(OTPScreen());
                        }, child: Text("Next"))),
                  ],
                ))

              ],
            ),

          ),
        ),
      ),
    );
  }
}
