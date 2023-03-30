import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:loginpage/main.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';

import '../../../../constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => Get.back(), icon: Icon(LineAwesomeIcons.angle_left),),
        title: Text(tEditProfile, style: Theme.of(context).textTheme.headline4?.apply(color: Colors.black,),),
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120, height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(tProfileimage),),
                    ),
                  ),
                  Positioned(
                      bottom: 0, right: 0,
                      child: Container(
                        width: 35, height: 35,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: tPrimaryColor),
                        child: Icon(LineAwesomeIcons.camera, color: Colors.black,),
                      )),
                ],
              ),
              SizedBox(height: 50,),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(),
                  )
                ],
              ))

            ],
          ),
        ),
      ),

    );
  }
}
