import 'package:flutter/material.dart';
import 'package:loginpage/src/constants/image_strings.dart';
import 'package:loginpage/src/constants/sizes.dart';
import 'package:loginpage/src/constants/text_strings.dart';

import '../../../../common_widgets/form/form_header_widget.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  /* section 1 */
                  FormHeaderWidget(
                    title: tLoginTitle,
                    image: welcomeScreenImage,
                    subtitle: tLoginSubtitle,
                  ),

                  // end

                  // Section 2
                  LoginForm(),

                  LoginFooterWidget(),

                ],
              ),
            ),
          )),
    );
  }
}



