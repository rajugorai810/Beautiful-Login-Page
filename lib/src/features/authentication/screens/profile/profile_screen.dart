import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:loginpage/src/constants/colors.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';
import 'package:loginpage/src/features/authentication/screens/DashBoard/widgets/dashboard.dart';
import 'package:loginpage/src/features/authentication/screens/profile/edit_profile.dart';

import '../../../../repository/authentication/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDark= MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(LineAwesomeIcons.angle_left),),
        title: Text(tProfile, style: Theme.of(context).textTheme.headline6,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(isDark? LineAwesomeIcons.sun : LineAwesomeIcons.moon  ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                        child: Image(image: AssetImage(tProfileimage),)),
                  ),
                  Positioned(
                    bottom: 0, right: 0,
                    child: GestureDetector(
                      onTap: (){
                        //Get.to(DashBoard());
                      },
                      child: Container(
                        height: 35, width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: tPrimaryColor,
                        ),
                        child: const Icon(LineAwesomeIcons.alternate_pencil,size: 20.0, color: Colors.black,),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10,),
              Text(tProfileHeading, style: Theme.of(context).textTheme.headline4,),
              Text(tProfileSubHading, style: Theme.of(context).textTheme.bodyText2,),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                child: ElevatedButton(onPressed: (){
                  Get.to(UpdateProfileScreen());
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tPrimaryColor, side: BorderSide.none, shape: StadiumBorder(),
                  ),
                  child: const Text(tEditProfile, style: TextStyle(color: tDarkColor),),),

              ),
              SizedBox(height: 30,),
              const Divider(),
              SizedBox(height: 10,),
              
              // menu
              ProfileMenuWidget(title: "Settings", icon: LineAwesomeIcons.cog, onPress: (){}),
              ProfileMenuWidget(title: "Billing Details", icon: LineAwesomeIcons.wallet, onPress: (){}),
              ProfileMenuWidget(title: "User Management", icon: LineAwesomeIcons.user_check, onPress: (){}),
              const SizedBox(height: 10,),
              ProfileMenuWidget(title: "Informantion", icon: LineAwesomeIcons.info, onPress: (){}),
              ProfileMenuWidget(title: "Logout",
                  icon: LineAwesomeIcons.alternate_sign_out,
                  textColor: Colors.red,
                  endIcon: false,
                  onPress: (){
                AuthenticationRepository.instance.logout();
              }),

              
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon= true,
    this.textColor,
    super.key,
  });
  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var isDark= MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor= isDark? tPrimaryColor : tAccentColor;
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: tAccentColor.withOpacity(0.1)
        ),
        child:  Icon(icon, color: iconColor,),
      ),
      title: Text(title, style: Theme.of(context).textTheme.bodyText1?.apply(color: textColor)),
      trailing:endIcon?  Container(
        height: 30, width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: const Icon(LineAwesomeIcons.angle_right,size: 18.0, color: Colors.grey,),
      ) : null,
    );
  }
}
