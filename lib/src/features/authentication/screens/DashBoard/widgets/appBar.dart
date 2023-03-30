
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:loginpage/src/features/authentication/screens/profile/profile_screen.dart';
import 'package:loginpage/src/repository/authentication/authentication_repository.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_strings.dart';

class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashBoardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        tAppName,
        style: Theme.of(context).textTheme.headline2,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20, top: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
            onPressed: (){
              //AuthenticationRepository.instance.logout();
              Get.to(ProfileScreen());
    },
            icon: Icon(Icons.manage_accounts),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(55);
}
