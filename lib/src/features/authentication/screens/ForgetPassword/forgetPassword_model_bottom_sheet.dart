
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/forgetPassword_phone.dart';
import 'package:loginpage/src/features/authentication/screens/ForgetPassword/forget_password_mail.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import 'forget_password_btn_widget.dart';

class ForgetPasswordScreen{
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        builder: (context)=> Container(

          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tForgetPassTitle, style: Theme.of(context).textTheme.headline2,),
              Text(tForgetPasssubTitle, style: Theme.of(context).textTheme.bodyText1,),
              SizedBox(height: tDefaultSize,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.mail_outline_outlined,
                title: "E-mail",
                subTitle: tResetViaEmail,
                onTap: (){
                  Navigator.pop(context);
                  Get.to(()=> const ForgetPasswordMailScreen());
                },

              ),
              SizedBox(height: 20,),
              ForgetPasswordBtnWidget(
                btnIcon: Icons.phone_android,
                title: "Phone",
                subTitle: tResetViaPhone,
                onTap: (){
                  Get.to(ForgetPasswordPhoneScreen());
                },

              ),

            ],
          ),
        ));
  }

}