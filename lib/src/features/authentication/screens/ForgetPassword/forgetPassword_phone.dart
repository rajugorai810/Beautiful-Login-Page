



import 'package:flutter/material.dart';
import 'package:loginpage/src/common_widgets/form/form_header_widget.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

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
                        label: Text("Phone Number"),
                        hintText: "enter phone number",
                        prefixIcon: Icon(Icons.mail_outline_outlined),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){}, child: Text("Next"))),
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
