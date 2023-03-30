import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/features/authentication/screens/DashBoard/widgets/dashboard.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/forgetPassword_model_bottom_sheet.dart';

import '../../../../constants/text_strings.dart';
import '../ForgetPassword/forget_password_btn_widget.dart';


class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "E-mail",
              hintText: "E-mail",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10,),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint_outlined),
                labelText: "Password",
                hintText: "password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                )
            ),
          ),
          SizedBox(height: 10,),
          Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              }, child: Text(tForgetPassword))),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Get.to(DashBoard());
              }, child: Text(tLogin))),
        ],
      ),
    ));
  }

}

